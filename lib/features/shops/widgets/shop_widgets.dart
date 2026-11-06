import 'dart:typed_data';

import 'package:flutter/material.dart';

import '../../../core/providers/locale_provider.dart';
import '../../../core/theme/app_theme.dart';
import '../models/shop_model.dart';

/// Firestore'da Türkçe saklanan kategori kodunun ekran etiketi.
String shopCategoryLabel(BuildContext context, String value) {
  final t = context.l10n;
  switch (value) {
    case 'Hediyelik':
      return t.shopsCatGifts;
    case 'Hurma & Gıda':
      return t.shopsCatDatesFood;
    case 'Parfüm & Misk':
      return t.shopsCatPerfume;
    case 'Tekstil & İhram':
      return t.shopsCatTextile;
    case 'Kuyumcu':
      return t.shopsCatJeweler;
    case 'Restoran & Kafe':
      return t.shopsCatRestaurant;
    case 'Kitap & Tesbih':
      return t.shopsCatBooks;
    case 'Diğer':
      return t.shopsCatOther;
  }
  return value;
}

/// Firestore'da Türkçe saklanan şehir değerinin ekran etiketi ('Tümü' filtre değeri dahil).
String shopCityLabel(BuildContext context, String value) {
  final t = context.l10n;
  switch (value) {
    case 'Tümü':
      return t.shopsAll;
    case 'Mekke':
      return t.commonMecca;
    case 'Medine':
      return t.commonMedina;
    case 'Cidde':
      return t.shopsCityJeddah;
    case 'Diğer':
      return t.shopsCityOther;
  }
  return value;
}

/// Kart gölgesi (uygulamadaki diğer kartlarla aynı hafiflikte).
List<BoxShadow> get shopCardShadow =>
    [BoxShadow(color: Colors.black.withValues(alpha: 0.05), blurRadius: 8, offset: const Offset(0, 3))];

/// Dükkan logosu; yoksa baş harfli renkli rozet.
class ShopLogo extends StatelessWidget {
  final String name;
  final Uint8List? bytes;
  final double size;
  final bool circle;

  const ShopLogo({super.key, required this.name, this.bytes, this.size = 56, this.circle = false});

  factory ShopLogo.of(ShopModel s, {double size = 56, bool circle = false}) =>
      ShopLogo(name: s.name, bytes: s.logoBytes, size: size, circle: circle);

  static const _palette = [
    AppColors.emerald600,
    AppColors.emerald700,
    AppColors.emerald800,
    AppColors.success,
    AppColors.warning,
    AppColors.textMuted,
  ];

  @override
  Widget build(BuildContext context) {
    final radius = circle ? BorderRadius.circular(size) : BorderRadius.circular(size * 0.25);
    if (bytes != null) {
      return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: radius,
          border: Border.all(color: AppColors.divider),
        ),
        clipBehavior: Clip.antiAlias,
        child: Image.memory(bytes!, fit: BoxFit.cover, gaplessPlayback: true,
            errorBuilder: (_, _, _) => _initial(radius)),
      );
    }
    return _initial(radius);
  }

  Widget _initial(BorderRadius radius) {
    final t = name.trim();
    final letter = t.isEmpty ? '?' : t.characters.first.toUpperCase();
    final color = _palette[t.hashCode.abs() % _palette.length];
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(color: color, borderRadius: radius),
      child: Text(letter,
          style: TextStyle(color: Colors.white, fontSize: size * 0.45, fontWeight: FontWeight.bold)),
    );
  }
}

/// "%15 İNDİRİM" rozeti.
class DiscountBadge extends StatelessWidget {
  final int percent;
  final bool large;
  const DiscountBadge({super.key, required this.percent, this.large = false});

  @override
  Widget build(BuildContext context) {
    if (percent <= 0) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: large ? 14 : 10, vertical: large ? 8 : 5),
        decoration: BoxDecoration(color: AppColors.primaryLight, borderRadius: BorderRadius.circular(12)),
        child: Text(context.l10n.shopsSpecialPrice,
            style: TextStyle(
                color: AppColors.primaryDark, fontWeight: FontWeight.w800, fontSize: large ? 16 : 11.5)),
      );
    }
    return Container(
      padding: EdgeInsets.symmetric(horizontal: large ? 16 : 10, vertical: large ? 10 : 6),
      decoration: BoxDecoration(gradient: AppColors.primaryGradient, borderRadius: BorderRadius.circular(12)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(context.l10n.shopsPercent(percent),
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w900, fontSize: large ? 30 : 20, height: 1)),
          const SizedBox(height: 2),
          Text(context.l10n.shopsDiscountBadge,
              style: TextStyle(
                  color: AppColors.mint,
                  fontWeight: FontWeight.w700,
                  fontSize: large ? 12 : 9.5,
                  letterSpacing: 1)),
        ],
      ),
    );
  }
}

/// Liste kartı: logo, ad, kategori, şehir, mesafe, indirim rozeti.
class ShopCard extends StatelessWidget {
  final ShopModel shop;
  final String? distance;
  final VoidCallback? onTap;

  const ShopCard({super.key, required this.shop, this.distance, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(18),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(18), boxShadow: shopCardShadow),
          padding: const EdgeInsets.all(14),
          child: Row(
            children: [
              ShopLogo.of(shop, size: 58),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(shop.name,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w700, color: AppColors.text)),
                    const SizedBox(height: 3),
                    Text(shopCategoryLabel(context, shop.category),
                        style: const TextStyle(fontSize: 13, color: AppColors.primary)),
                    const SizedBox(height: 6),
                    Wrap(
                      spacing: 10,
                      runSpacing: 4,
                      children: [
                        _meta(Icons.location_city_rounded, shopCityLabel(context, shop.city)),
                        if (distance != null) _meta(Icons.near_me_rounded, distance!),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 8),
              DiscountBadge(percent: shop.discountPercent),
            ],
          ),
        ),
      ),
    );
  }

  Widget _meta(IconData icon, String text) => Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 14, color: AppColors.textMuted),
          const SizedBox(width: 3),
          Text(text, style: const TextStyle(fontSize: 12, color: AppColors.textMuted)),
        ],
      );
}

/// Beyaz kart kabı.
class ShopSection extends StatelessWidget {
  final String? title;
  final IconData? icon;
  final Widget child;
  const ShopSection({super.key, this.title, this.icon, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsetsDirectional.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(18), boxShadow: shopCardShadow),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Row(
              children: [
                if (icon != null) ...[Icon(icon, size: 20, color: AppColors.primary), const SizedBox(width: 8)],
                Text(title!,
                    style: const TextStyle(fontSize: 15.5, fontWeight: FontWeight.w700, color: AppColors.text)),
              ],
            ),
            const SizedBox(height: 12),
          ],
          child,
        ],
      ),
    );
  }
}
