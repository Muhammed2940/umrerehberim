import 'package:flutter/material.dart';
import 'package:intl/intl.dart' show NumberFormat;

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../../esnaf/esnaf_config.dart';
import '../../esnaf/models/coupon.dart';
import 'cuzdan_widgets.dart';

/// Cüzdan ekranının ortak görünüm sabitleri (açık nane-gri zemin, beyaz kartlar).
class WalletStyle {
  WalletStyle._();
  static const background = Color(0xFFF2F6F4);
  static const radius = 18.0;
  static const cardGradient = LinearGradient(
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
    colors: [AppColors.emerald600, AppColors.emerald700, AppColors.emerald900],
  );

  static BoxDecoration card() => BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(radius),
        boxShadow: [
          BoxShadow(color: AppColors.emerald900.withValues(alpha: 0.04), blurRadius: 12, offset: const Offset(0, 4)),
        ],
      );
}

/// 1240 → "1.240" (seçili dile göre binlik ayırıcı).
String formatPoints(int v) => NumberFormat('#,##0').format(v);

/// Gizli bakiyede gösterilen yer tutucu.
const hiddenMask = '••••';

/// Üstteki beyaz bakiye kartı: büyük puan, göz simgesi, riyal karşılığı ve
/// sağda iki yuvarlak kısayol (QR'ım, Dükkanlar).
class WalletBalanceCard extends StatelessWidget {
  final int points;
  final bool hidden;
  final VoidCallback onToggleHidden;
  final VoidCallback onQr;
  final VoidCallback onShops;

  const WalletBalanceCard({
    super.key,
    required this.points,
    required this.hidden,
    required this.onToggleHidden,
    required this.onQr,
    required this.onShops,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final worth = formatSar(EsnafConfig.pointsToSar(points < 0 ? 0 : points));
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 16, 14, 18),
      decoration: WalletStyle.card(),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(t.cuzdanBalanceLabel,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 13.5, color: AppColors.textMuted)),
                    ),
                    IconButton(
                      visualDensity: VisualDensity.compact,
                      tooltip: hidden ? t.cuzdanShowBalance : t.cuzdanHideBalance,
                      onPressed: onToggleHidden,
                      icon: Icon(hidden ? Icons.visibility_off_outlined : Icons.visibility_outlined,
                          size: 20, color: AppColors.textMuted),
                    ),
                  ],
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    t.cuzdanPointsAmount(hidden ? hiddenMask : formatPoints(points)),
                    style: const TextStyle(
                        fontSize: 32, fontWeight: FontWeight.w700, color: AppColors.text, height: 1.1),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  t.cuzdanWorthRiyal(hidden ? hiddenMask : worth),
                  style: const TextStyle(fontSize: 13, color: AppColors.textMuted),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          _RoundAction(icon: Icons.qr_code_2_rounded, label: t.cuzdanMyQr, onTap: onQr),
          const SizedBox(width: 10),
          _RoundAction(icon: Icons.storefront_rounded, label: t.cuzdanShops, onTap: onShops),
        ],
      ),
    );
  }
}

class _RoundAction extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;
  const _RoundAction({required this.icon, required this.label, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(14),
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(4),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 50,
              decoration: const BoxDecoration(color: AppColors.emerald700, shape: BoxShape.circle),
              child: Icon(icon, color: AppColors.mint, size: 24),
            ),
            const SizedBox(height: 6),
            Text(label, style: const TextStyle(fontSize: 12, color: AppColors.text, fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}

/// Kart rulosu: önce büyük sadakat kartı, ardından kullanılabilir kuponlar.
/// Kupon yoksa yalnız sadakat kartı gösterilir ve nokta göstergesi çıkmaz.
class WalletCardCarousel extends StatefulWidget {
  final Widget loyaltyCard;
  final List<Widget> couponCards;
  const WalletCardCarousel({super.key, required this.loyaltyCard, required this.couponCards});

  @override
  State<WalletCardCarousel> createState() => _WalletCardCarouselState();
}

class _WalletCardCarouselState extends State<WalletCardCarousel> {
  static const _fraction = 0.9;
  final _controller = PageController(viewportFraction: _fraction);
  int _page = 0;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pages = [widget.loyaltyCard, ...widget.couponCards];
    if (_page >= pages.length) _page = 0;
    return LayoutBuilder(builder: (context, c) {
      // Gerçek kart oranı (85,6 × 54 mm ≈ 1,58).
      final cardWidth = c.maxWidth * _fraction - 12;
      final height = cardWidth / 1.58;
      return Column(
        children: [
          SizedBox(
            height: height,
            child: PageView.builder(
              controller: _controller,
              itemCount: pages.length,
              onPageChanged: (i) => setState(() => _page = i),
              itemBuilder: (context, i) => AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  var delta = (i - _page).toDouble();
                  if (_controller.hasClients && _controller.position.haveDimensions) {
                    delta = (_controller.page ?? _page.toDouble()) - i;
                  }
                  final scale = (1 - delta.abs() * 0.06).clamp(0.9, 1.0);
                  return Transform.scale(scale: scale, child: child);
                },
                child: Padding(padding: const EdgeInsets.symmetric(horizontal: 6), child: pages[i]),
              ),
            ),
          ),
          if (pages.length > 1) ...[
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                for (var i = 0; i < pages.length; i++)
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 220),
                    margin: const EdgeInsets.symmetric(horizontal: 3),
                    width: i == _page ? 18 : 6,
                    height: 6,
                    decoration: BoxDecoration(
                      color: i == _page ? AppColors.emerald700 : AppColors.sage.withValues(alpha: 0.5),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
              ],
            ),
          ],
        ],
      );
    });
  }
}

/// Kredi kartı görünümlü "Umre Rehberim Sadakat Kartı".
class LoyaltyCard extends StatelessWidget {
  final String holderName;

  /// Kart numarasının son 4 hanesi (TC ya da uid'den).
  final String last4;
  final int points;
  final bool hidden;

  const LoyaltyCard({
    super.key,
    required this.holderName,
    required this.last4,
    required this.points,
    required this.hidden,
  });

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    return LayoutBuilder(builder: (context, c) {
      // Yazılar kart genişliğiyle orantılı büyür.
      final s = (c.maxWidth / 340).clamp(0.85, 1.4);
      return Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          gradient: WalletStyle.cardGradient,
          borderRadius: BorderRadius.circular(22),
          boxShadow: [
            BoxShadow(color: AppColors.emerald900.withValues(alpha: 0.22), blurRadius: 18, offset: const Offset(0, 8)),
          ],
        ),
        child: Stack(
          children: [
            // Süs daireleri
            PositionedDirectional(end: -50 * s, top: -60 * s, child: _circle(200 * s, AppColors.mint, 0.07)),
            PositionedDirectional(end: 40 * s, top: -90 * s, child: _circle(160 * s, AppColors.sage, 0.06)),
            PositionedDirectional(start: -70 * s, bottom: -90 * s, child: _circle(220 * s, AppColors.sage, 0.09)),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(22 * s, 20 * s, 22 * s, 18 * s),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(t.cuzdanCardBrand,
                                style: TextStyle(
                                    color: AppColors.surface,
                                    fontSize: 21 * s,
                                    fontWeight: FontWeight.w700,
                                    letterSpacing: .3)),
                            Text(t.cuzdanCardSubtitle,
                                style: TextStyle(
                                    color: AppColors.mint.withValues(alpha: 0.85),
                                    fontSize: 13.5 * s,
                                    fontWeight: FontWeight.w400,
                                    letterSpacing: 1)),
                          ],
                        ),
                      ),
                      Icon(Icons.stars_rounded, color: AppColors.sage, size: 34 * s),
                    ],
                  ),
                  const Spacer(),
                  // Kart numarası her dilde soldan sağa okunur.
                  Directionality(
                    textDirection: TextDirection.ltr,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text('••••  ••••  ••••  $last4',
                          style: TextStyle(
                            color: AppColors.surface.withValues(alpha: 0.92),
                            fontSize: 20 * s,
                            letterSpacing: 2,
                            fontWeight: FontWeight.w500,
                            fontFeatures: const [FontFeature.tabularFigures()],
                          )),
                    ),
                  ),
                  const Spacer(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(t.cuzdanCardHolder,
                                style: TextStyle(
                                    color: AppColors.mint.withValues(alpha: 0.7), fontSize: 9.5 * s, letterSpacing: 1.2)),
                            const SizedBox(height: 2),
                            Text(holderName.toUpperCase(),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    color: AppColors.surface,
                                    fontSize: 15.5 * s,
                                    letterSpacing: 1.4,
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                      const SizedBox(width: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(t.cuzdanCardPoints,
                              style: TextStyle(
                                  color: AppColors.mint.withValues(alpha: 0.7), fontSize: 9.5 * s, letterSpacing: 1.2)),
                          const SizedBox(height: 2),
                          Text(hidden ? hiddenMask : formatPoints(points),
                              style: TextStyle(
                                  color: AppColors.surface, fontSize: 26 * s, fontWeight: FontWeight.w700, height: 1)),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }

  static Widget _circle(double size, Color color, double alpha) => Container(
        width: size,
        height: size,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color.withValues(alpha: alpha)),
      );
}

/// Rulodaki küçük kupon kartı: indirim, başlık, kod. Dokununca ayrıntı açılır.
class CouponMiniCard extends StatelessWidget {
  final Coupon coupon;
  final VoidCallback onTap;
  const CouponMiniCard({super.key, required this.coupon, required this.onTap});

  static String _n(double v) => v == v.roundToDouble() ? v.toStringAsFixed(0) : v.toStringAsFixed(2);

  @override
  Widget build(BuildContext context) {
    final t = context.l10n;
    final c = coupon;
    final big = c.isPercent ? '%${_n(c.value)}' : '${_n(c.value)} SAR';
    // Sadakat kartından küçük görünsün: dikeyde boşluk bırakılır.
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: Material(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(WalletStyle.radius),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 96,
                color: AppColors.mint,
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(big,
                          style: const TextStyle(
                              color: AppColors.emerald700, fontSize: 26, fontWeight: FontWeight.w800)),
                    ),
                    Text(t.cuzdanCouponOff,
                        style: const TextStyle(color: AppColors.emerald600, fontSize: 11, letterSpacing: 1)),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(14, 12, 12, 12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(c.title.isEmpty ? c.code : c.title,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.text)),
                      const SizedBox(height: 6),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColors.sage),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(c.code,
                            style: const TextStyle(
                                fontSize: 12.5, letterSpacing: 1.4, fontWeight: FontWeight.w600, color: AppColors.primary)),
                      ),
                      const SizedBox(height: 6),
                      Text(t.cuzdanCouponTapHint, style: const TextStyle(fontSize: 11.5, color: AppColors.textMuted)),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
