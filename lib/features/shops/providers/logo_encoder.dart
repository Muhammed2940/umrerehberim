import 'dart:convert';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../core/providers/locale_provider.dart';

/// Logo seçme ve küçültme. Spark planında Cloud Storage olmadığı için logo,
/// Firestore belgesinde base64 olarak tutulur (en fazla ~150 KB).
class LogoEncoder {
  LogoEncoder._();

  static const maxBase64Length = 150 * 1024;

  /// Seçilen logoyu 256 px'e küçültüp base64 döndürür.
  /// İptalde null; çok büyükse [LogoTooLargeException] fırlatır.
  static Future<String?> pick(ImageSource source) async {
    final file = await ImagePicker().pickImage(
      source: source,
      maxWidth: 256,
      maxHeight: 256,
      imageQuality: 70,
    );
    if (file == null) return null;
    var bytes = await file.readAsBytes();
    var b64 = base64Encode(bytes);
    if (b64.length > maxBase64Length) {
      // Bazı biçimlerde (PNG, HEIC) image_picker küçültmeyebilir: dart:ui ile 192 px'e indir.
      final smaller = await _resize(bytes, 192);
      if (smaller != null) {
        bytes = smaller;
        b64 = base64Encode(bytes);
      }
    }
    if (b64.length > maxBase64Length) throw LogoTooLargeException(b64.length);
    return b64;
  }

  static Future<Uint8List?> _resize(Uint8List bytes, int width) async {
    try {
      final codec = await ui.instantiateImageCodec(bytes, targetWidth: width);
      final frame = await codec.getNextFrame();
      final data = await frame.image.toByteData(format: ui.ImageByteFormat.png);
      frame.image.dispose();
      return data?.buffer.asUint8List();
    } catch (e) {
      debugPrint('LogoEncoder._resize: $e');
      return null;
    }
  }
}

class LogoTooLargeException implements Exception {
  final int length;
  LogoTooLargeException(this.length);

  @override
  String toString() => l10n.shopsLogoTooLarge((length / 1024).round());
}
