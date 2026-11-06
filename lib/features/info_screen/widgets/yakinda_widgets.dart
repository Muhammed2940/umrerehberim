import 'package:flutter/material.dart';

import '../../../core/theme/app_theme.dart';
import '../data/yakinda_data.dart';

const _altin = Color(0xFFC9A54C);

/// "ÇOK YAKINDA" altın rozeti.
class YakindaRozeti extends StatelessWidget {
  const YakindaRozeti({super.key, this.koyuZemin = true});

  final bool koyuZemin;

  @override
  Widget build(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
        decoration: BoxDecoration(
          color: koyuZemin ? _altin : _altin.withValues(alpha: 0.15),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          YakindaMetin.rozet.of(context),
          style: TextStyle(
            fontSize: 10,
            letterSpacing: 0.6,
            fontWeight: FontWeight.w800,
            color: koyuZemin ? AppColors.emerald900 : const Color(0xFF8A6D1F),
          ),
        ),
      );
}

/// Genel Bilgiler'in en üstündeki "Çok Yakında" alanı: başlık + yatay kart şeridi.
class YakindaBolumu extends StatelessWidget {
  const YakindaBolumu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Icon(Icons.auto_awesome_rounded, color: _altin, size: 22),
            const SizedBox(width: 8),
            Text(
              YakindaMetin.baslik.of(context),
              style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: AppColors.text),
            ),
          ],
        ),
        const SizedBox(height: 2),
        Text(YakindaMetin.altBaslik.of(context), style: const TextStyle(fontSize: 13, color: AppColors.textMuted)),
        const SizedBox(height: 12),
        SizedBox(
          height: 178,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            clipBehavior: Clip.none,
            itemCount: kYakindaOzellikler.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, i) => _YakindaKart(ozellik: kYakindaOzellikler[i]),
          ),
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class _YakindaKart extends StatelessWidget {
  const _YakindaKart({required this.ozellik});

  final YakindaOzellik ozellik;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: Material(
        borderRadius: BorderRadius.circular(20),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => yakindaDetayGoster(context, ozellik),
          child: Ink(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [AppColors.emerald900, Color.lerp(AppColors.emerald700, ozellik.renk, 0.35)!],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Stack(
              children: [
                PositionedDirectional(
                  end: -18,
                  bottom: -18,
                  child: Icon(ozellik.icon, size: 110, color: Colors.white.withValues(alpha: 0.06)),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(9),
                            decoration: BoxDecoration(
                              color: ozellik.renk.withValues(alpha: 0.25),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Icon(ozellik.icon, color: Colors.white, size: 22),
                          ),
                          const Spacer(),
                          const YakindaRozeti(),
                        ],
                      ),
                      const Spacer(),
                      Text(
                        ozellik.baslik.of(context),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w800, height: 1.2),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        ozellik.kisa.of(context),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(color: Colors.white.withValues(alpha: 0.78), fontSize: 12.5, height: 1.3),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// Kartın ayrıntı penceresi.
void yakindaDetayGoster(BuildContext context, YakindaOzellik o) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    showDragHandle: true,
    backgroundColor: Colors.white,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
    builder: (ctx) => SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: o.renk.withValues(alpha: 0.12),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(o.icon, color: o.renk, size: 28),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(o.baslik.of(ctx),
                          style: const TextStyle(fontSize: 19, fontWeight: FontWeight.w800, color: AppColors.text)),
                      const SizedBox(height: 4),
                      const YakindaRozeti(koyuZemin: false),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Text(o.aciklama.of(ctx), style: const TextStyle(fontSize: 15, height: 1.5, color: AppColors.text)),
            const SizedBox(height: 14),
            for (final m in o.maddeler)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(Icons.check_circle_rounded, size: 20, color: o.renk),
                    const SizedBox(width: 10),
                    Expanded(child: Text(m.of(ctx), style: const TextStyle(fontSize: 14.5, height: 1.35))),
                  ],
                ),
              ),
            const SizedBox(height: 14),
            Container(
              padding: const EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: AppColors.mint.withValues(alpha: 0.6),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                children: [
                  const Icon(Icons.notifications_active_rounded, color: AppColors.primary),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Text(YakindaMetin.bilgi.of(ctx),
                        style: const TextStyle(fontSize: 13.5, height: 1.4, color: AppColors.emerald800)),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            FilledButton(
              onPressed: () => Navigator.pop(ctx),
              child: Text(YakindaMetin.tamam.of(ctx)),
            ),
          ],
        ),
      ),
    ),
  );
}

/// Bir bölümün içinde tek satırlık "Çok yakında" vurgu kutusu (ör. Seyahat Rehberi > İletişim).
class YakindaKutusu extends StatelessWidget {
  const YakindaKutusu({super.key, required this.baslik, required this.aciklama});

  final String baslik;
  final String aciklama;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [AppColors.emerald800, AppColors.emerald600]),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.sim_card_rounded, color: _altin, size: 26),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 8,
                  runSpacing: 4,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Text(baslik,
                        style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w800, fontSize: 15.5)),
                    const YakindaRozeti(),
                  ],
                ),
                const SizedBox(height: 6),
                Text(aciklama,
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.85), fontSize: 13.5, height: 1.4)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
