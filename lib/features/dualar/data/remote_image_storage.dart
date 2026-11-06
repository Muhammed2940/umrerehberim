import 'dart:async';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../core/providers/locale_provider.dart';

/// Sunucudaki görselleri (dua sayfaları, Kur'an sayfaları) cihaza indirip
/// uygulama belgeler klasöründe saklayan ortak yardımcı.
///
/// Orijinal uygulamadaki Tavaf/Say/Quran storage servislerinin ortak mantığı.
/// Sunucu: `https://hactapot.xyz/<remoteFolder>/<dosya>`.
class RemoteImageStorage {
  RemoteImageStorage({
    required this.remoteFolder,
    required this.localFolder,
    required this.allDownloadedKey,
    required this.downloadedListKey,
    required this.fileNames,
    this.accept = 'image/*',
  });

  static const String baseUrl = 'https://hactapot.xyz';
  static const Duration _timeout = Duration(seconds: 45);

  final String remoteFolder;
  final String localFolder;
  final String allDownloadedKey;
  final String downloadedListKey;
  final List<String> fileNames;
  final String accept;

  final http.Client _client = http.Client();
  Directory? _dir;

  Future<Directory> _getDir() async {
    if (_dir != null) return _dir!;
    final docs = await getApplicationDocumentsDirectory();
    final dir = Directory('${docs.path}/$localFolder');
    if (!await dir.exists()) await dir.create(recursive: true);
    return _dir = dir;
  }

  Future<String> getLocalFilePath(String fileName) async => '${(await _getDir()).path}/$fileName';

  Future<bool> isFileDownloaded(String fileName) async {
    final f = File(await getLocalFilePath(fileName));
    return await f.exists() && await f.length() > 0;
  }

  Future<String?> getLocalFilePathIfExists(String fileName) async =>
      await isFileDownloaded(fileName) ? await getLocalFilePath(fileName) : null;

  static Future<bool> hasInternetConnection() async {
    try {
      final r = await InternetAddress.lookup('hactapot.xyz').timeout(const Duration(seconds: 6));
      return r.isNotEmpty && r.first.rawAddress.isNotEmpty;
    } catch (_) {
      return false;
    }
  }

  /// Tek dosya indirir. Hata durumunda seçili dilde mesajlı [StorageException] fırlatır.
  Future<String> downloadFile(String fileName, {void Function(double progress)? onProgress}) async {
    final path = await getLocalFilePath(fileName);
    if (await isFileDownloaded(fileName)) {
      onProgress?.call(1);
      return path;
    }
    if (!await hasInternetConnection()) throw StorageException.noInternet();

    final tmp = File('$path.part');
    try {
      final req = http.Request('GET', Uri.parse('$baseUrl/$remoteFolder/$fileName'))
        ..headers.addAll({'Accept': accept, 'Connection': 'keep-alive', 'User-Agent': 'UmremApp/1.0'});
      final res = await _client.send(req).timeout(_timeout);
      if (res.statusCode != 200) throw StorageException(l10n.dualarServerError(res.statusCode));

      final total = res.contentLength ?? 0;
      var received = 0;
      final sink = tmp.openWrite();
      try {
        await for (final chunk in res.stream.timeout(_timeout)) {
          sink.add(chunk);
          received += chunk.length;
          if (total > 0) onProgress?.call(received / total);
        }
      } finally {
        await sink.close();
      }
      if (received == 0) throw StorageException(l10n.dualarDownloadFailedShort);
      await tmp.rename(path);
      onProgress?.call(1);
      await _markFileAsDownloaded(fileName);
      return path;
    } on TimeoutException catch (e) {
      throw StorageException('${l10n.dualarTimeout}: ${e.message ?? ''}'.trim(), noInternet: true);
    } on SocketException {
      throw StorageException.noInternet();
    } on StorageException {
      rethrow;
    } catch (e) {
      throw StorageException(l10n.dualarDownloadErrorGeneric('$e'));
    } finally {
      if (await tmp.exists()) {
        try {
          await tmp.delete();
        } catch (_) {}
      }
    }
  }

  Future<void> _markFileAsDownloaded(String fileName) async {
    final prefs = await SharedPreferences.getInstance();
    final list = prefs.getStringList(downloadedListKey) ?? <String>[];
    if (!list.contains(fileName)) {
      list.add(fileName);
      await prefs.setStringList(downloadedListKey, list);
    }
  }

  /// Eksik dosyaları sırayla indirir. [onProgress] (tamamlanan, toplam).
  Future<void> downloadAllFiles({void Function(int done, int total)? onProgress}) async {
    if (!await hasInternetConnection()) throw StorageException.noInternet();
    final total = fileNames.length;
    for (var i = 0; i < total; i++) {
      final name = fileNames[i];
      onProgress?.call(i, total);
      try {
        await downloadFile(name);
      } catch (e) {
        throw StorageException(
          l10n.dualarFileNotDownloaded(name, _clean(e)),
          noInternet: e is StorageException && e.isNoInternet,
        );
      }
    }
    onProgress?.call(total, total);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(allDownloadedKey, true);
  }

  Future<bool> areAllFilesDownloaded() async {
    final prefs = await SharedPreferences.getInstance();
    if (prefs.getBool(allDownloadedKey) != true) return false;
    // Bayrak varsa yine de ilk ve son dosyayı doğrula (uygulama verisi silinmiş olabilir).
    if (fileNames.isEmpty) return true;
    final ok = await isFileDownloaded(fileNames.first) && await isFileDownloaded(fileNames.last);
    if (!ok) await prefs.setBool(allDownloadedKey, false);
    return ok;
  }

  Future<int> downloadedCount() async {
    var n = 0;
    for (final f in fileNames) {
      if (await isFileDownloaded(f)) n++;
    }
    return n;
  }

  static String _clean(Object e) => e.toString().replaceFirst('Exception: ', '');

  /// Hata nesnesini kullanıcıya gösterilecek metne çevirir.
  static String cleanError(Object e) => _clean(e);
}

/// Mesajı doğrudan kullanıcıya gösterilebilen indirme hatası.
class StorageException implements Exception {
  StorageException(this.message, {bool noInternet = false}) : isNoInternet = noInternet;

  /// "İnternet bağlantısı yok" hatası.
  StorageException.noInternet() : this(l10n.dualarNoInternet, noInternet: true);

  final String message;

  /// Bağlantı kaynaklı hata mı (ekranda wifi simgesi ve "internet" mesajı gösterilir).
  final bool isNoInternet;

  @override
  String toString() => message;
}
