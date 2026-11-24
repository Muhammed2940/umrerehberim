/// Aile Takibi web adresi (docs/plan/AILE_TAKIBI_SOZLESME.md).
/// Gerçek alan adı belli olunca yalnız [webOrigin] değişir.
class AileTakibiConfig {
  AileTakibiConfig._();

  static const webOrigin = 'https://ALAN';

  /// Token `#` sonrasında: sunucu logu ve Referer'a düşmez.
  static String linkFor(String token) => '$webOrigin/t/#$token';
}
