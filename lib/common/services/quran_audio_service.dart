import 'dart:async';

import 'package:audio_service/audio_service.dart';
import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/providers/locale_provider.dart';
import '../../features/telsiz/providers/telsiz_controller.dart';
import '../constant/surahs_info.dart';

/// Sesli okuma yapan imam (kâri). Ses dosyaları mp3quran.net üzerinden akış
/// olarak çalınır: `<server>/001.mp3 … <server>/114.mp3`.
class QuranReciter {
  const QuranReciter({
    required this.id,
    required this.name,
    required this.nameEn,
    required this.nameAr,
    required this.shortName,
    required this.server,
    this.everyAyahFolder,
  });

  final String id;

  /// Ayet bazlı ses klasörü (`everyayah.com/data/<klasör>/SSSAAA.mp3`).
  /// Null ise bu imamın ayet kaydı yok.
  final String? everyAyahFolder;

  bool get hasAyahAudio => everyAyahFolder != null;

  String? ayahUrlFor(int surah, int ayah) => everyAyahFolder == null
      ? null
      : 'https://everyayah.com/data/$everyAyahFolder/'
            '${surah.toString().padLeft(3, '0')}${ayah.toString().padLeft(3, '0')}.mp3';

  /// Türkçe yazım, ör. "Mishary Raşid el-Afasi".
  final String name;

  /// İngilizce yazım, ör. "Mishary Rashid Alafasy".
  final String nameEn;

  /// Arapça yazım, ör. "مشاري راشد العفاسي".
  final String nameAr;

  /// Kısa ad, ör. "el-Afasi".
  final String shortName;

  /// Sonu `/` ile biten klasör adresi.
  final String server;

  /// Rivayet ve okuma tarzı (hepsi Hafs • Murattal).
  String get style => l10n.quranReciterStyleHafsMurattal;

  /// Seçili dile göre ad.
  String get displayName => switch (localeProvider.locale.languageCode) {
    'en' => nameEn,
    'ar' => nameAr,
    _ => name,
  };

  String urlFor(int surah) => '$server${surah.toString().padLeft(3, '0')}.mp3';

  /// Avatar için baş harfler, ör. "MA" (Arapçada "مع").
  String get initials {
    final parts = displayName.split(' ').where((p) => p.isNotEmpty).toList();
    String first(String s) {
      var cleaned = s.contains('-') ? s.split('-').last : s;
      if (cleaned.startsWith('ال') && cleaned.length > 2) cleaned = cleaned.substring(2);
      return cleaned.isEmpty ? '' : cleaned[0].toUpperCase();
    }

    if (parts.length == 1) return first(parts.first);
    return '${first(parts.first)}${first(parts.last)}';
  }
}

/// 15 imam. Her birinin 001.mp3 ve 114.mp3 dosyası 5 Kasım 2026'da curl ile
/// doğrulandı (HTTP 206, audio/mpeg). Kaynak: mp3quran.net API v3.
///
/// Ayet sesi: everyayah.com. Klasörler 6 Kasım 2026'da HEAD isteğiyle
/// doğrulandı (001001, 002255, 114006 → HTTP 200, audio/mpeg). İdris Ebkar'ın
/// everyayah.com'da ayet kaydı yok (`everyAyahFolder: null`).
const List<QuranReciter> quranReciters = [
  QuranReciter(
    id: 'afasy',
    name: 'Mishary Raşid el-Afasi',
    nameEn: 'Mishary Rashid Alafasy',
    nameAr: 'مشاري راشد العفاسي',
    shortName: 'el-Afasi',
    server: 'https://cdn.mp3quran.net/audio/mishary-alafasy/r1/',
    everyAyahFolder: 'Alafasy_128kbps',
  ),
  QuranReciter(
    id: 'sudais',
    name: 'Abdurrahman es-Sudeys',
    nameEn: 'Abdul Rahman Al-Sudais',
    nameAr: 'عبد الرحمن السديس',
    shortName: 'es-Sudeys',
    server: 'https://cdn.mp3quran.net/audio/abdulrahman-sudais/r1/',
    everyAyahFolder: 'Abdurrahmaan_As-Sudais_192kbps',
  ),
  QuranReciter(
    id: 'shuraim',
    name: 'Suud eş-Şureym',
    nameEn: 'Saud Al-Shuraim',
    nameAr: 'سعود الشريم',
    shortName: 'eş-Şureym',
    server: 'https://cdn.mp3quran.net/audio/saud-shuraim/r1/',
    everyAyahFolder: 'Saood_ash-Shuraym_128kbps',
  ),
  QuranReciter(
    id: 'muaiqly',
    name: 'Maher el-Muaykli',
    nameEn: 'Maher Al-Muaiqly',
    nameAr: 'ماهر المعيقلي',
    shortName: 'el-Muaykli',
    server: 'https://cdn.mp3quran.net/audio/maher-muaiqly/r1/',
    everyAyahFolder: 'MaherAlMuaiqly128kbps',
  ),
  QuranReciter(
    id: 'abdulbasit',
    name: 'Abdulbasit Abdussamed',
    nameEn: 'Abdul Basit Abdul Samad',
    nameAr: 'عبد الباسط عبد الصمد',
    shortName: 'Abdulbasit',
    server: 'https://cdn.mp3quran.net/audio/abdulbasit-abdulsamad/r3/',
    everyAyahFolder: 'Abdul_Basit_Murattal_192kbps',
  ),
  QuranReciter(
    id: 'husary',
    name: 'Mahmud Halil el-Husari',
    nameEn: 'Mahmoud Khalil Al-Husary',
    nameAr: 'محمود خليل الحصري',
    shortName: 'el-Husari',
    server: 'https://cdn.mp3quran.net/audio/mahmoud-husary/r1/',
    everyAyahFolder: 'Husary_128kbps',
  ),
  QuranReciter(
    id: 'minshawi',
    name: 'Muhammed Sıddık el-Minşavi',
    nameEn: 'Mohamed Siddiq Al-Minshawi',
    nameAr: 'محمد صديق المنشاوي',
    shortName: 'el-Minşavi',
    server: 'https://cdn.mp3quran.net/audio/muhammad-minshawi/r1/',
    everyAyahFolder: 'Minshawy_Murattal_128kbps',
  ),
  QuranReciter(
    id: 'ajmy',
    name: 'Ahmed el-Acemi',
    nameEn: 'Ahmed Al-Ajmy',
    nameAr: 'أحمد بن علي العجمي',
    shortName: 'el-Acemi',
    server: 'https://cdn.mp3quran.net/audio/ahmad-ajmi/r1/',
    everyAyahFolder: 'ahmed_ibn_ali_al_ajamy_128kbps',
  ),
  QuranReciter(
    id: 'shatri',
    name: 'Ebu Bekir eş-Şatıri',
    nameEn: 'Abu Bakr Al-Shatri',
    nameAr: 'أبو بكر الشاطري',
    shortName: 'eş-Şatıri',
    server: 'https://cdn.mp3quran.net/audio/abubakr-shatri/r1/',
    everyAyahFolder: 'Abu_Bakr_Ash-Shaatree_128kbps',
  ),
  QuranReciter(
    id: 'rifai',
    name: 'Hani er-Rifai',
    nameEn: 'Hani Ar-Rifai',
    nameAr: 'هاني الرفاعي',
    shortName: 'er-Rifai',
    server: 'https://cdn.mp3quran.net/audio/hani-rifai/r1/',
    everyAyahFolder: 'Hani_Rifai_192kbps',
  ),
  QuranReciter(
    id: 'ghamdi',
    name: 'Saad el-Gamidi',
    nameEn: 'Saad Al-Ghamdi',
    nameAr: 'سعد الغامدي',
    shortName: 'el-Gamidi',
    server: 'https://cdn.mp3quran.net/audio/saad-ghamdi/r1/',
    everyAyahFolder: 'Ghamadi_40kbps',
  ),
  QuranReciter(
    id: 'dosari',
    name: 'Yasir ed-Devseri',
    nameEn: 'Yasser Al-Dosari',
    nameAr: 'ياسر الدوسري',
    shortName: 'ed-Devseri',
    server: 'https://cdn.mp3quran.net/audio/yasser-dosari/r1/',
    everyAyahFolder: 'Yasser_Ad-Dussary_128kbps',
  ),
  QuranReciter(
    id: 'basfar',
    name: 'Abdullah Basfar',
    nameEn: 'Abdullah Basfar',
    nameAr: 'عبد الله بصفر',
    shortName: 'Basfar',
    server: 'https://cdn.mp3quran.net/audio/abdullah-basfar/r1/',
    everyAyahFolder: 'Abdullah_Basfar_192kbps',
  ),
  QuranReciter(
    id: 'qatami',
    name: 'Nasser el-Katami',
    nameEn: 'Nasser Al-Qatami',
    nameAr: 'ناصر القطامي',
    shortName: 'el-Katami',
    server: 'https://cdn.mp3quran.net/audio/nasser-qatami/r1/',
    everyAyahFolder: 'Nasser_Alqatami_128kbps',
  ),
  QuranReciter(
    id: 'abkar',
    name: 'İdris Ebkar',
    nameEn: 'Idrees Abkar',
    nameAr: 'إدريس أبكر',
    shortName: 'Ebkar',
    server: 'https://cdn.mp3quran.net/audio/idrees-abkar/r1/',
  ),
];

/// Oynatma isteğinin sonucu.
enum QuranPlayResult { ok, blockedByTelsiz, error }

/// Kur'an sesli okuma servisi (tekil).
///
/// `audio_service` + `just_audio` kullanır: ekran kapalıyken ve uygulama arka
/// plandayken çalmaya devam eder; bildirimde ve kilit ekranında önceki sure /
/// oynat-duraklat / sonraki sure kontrolleri bulunur.
///
/// Telsiz (LiveKit) açıkken Kur'an sesi başlatılmaz; Kur'an çalarken telsiz
/// açılırsa Kur'an duraklatılır.
class QuranAudioService extends ChangeNotifier {
  QuranAudioService._() {
    TelsizController.instance.addListener(_onTelsizChanged);
  }

  static final QuranAudioService instance = QuranAudioService._();

  static const String _reciterKey = 'quran_reciter_id';
  static String get telsizBlockedMessage => l10n.coreQuranBlockedByRadio;

  QuranReciter reciter = quranReciters.first;

  /// Çalan / yüklenen sure (1-114). Hiç çalınmadıysa null.
  int? currentSurah;

  bool isLoading = false;
  String? error;

  /// İlerleme (sık güncellenir; yalnız ilerleme çubuğu dinlemeli).
  final ValueNotifier<Duration> position = ValueNotifier(Duration.zero);
  Duration duration = Duration.zero;

  /// "Dinle" önizlemesi çalan imam.
  String? previewingId;

  _QuranAudioHandler? _handler;
  Future<_QuranAudioHandler>? _initFuture;
  AudioPlayer? _previewPlayer;
  bool _prefsLoaded = false;

  bool get isPlaying => _handler?.player.playing ?? false;
  bool get hasTrack => currentSurah != null;

  static bool get telsizBusy => TelsizController.instance.isActive;

  Future<void> loadPrefs() async {
    if (_prefsLoaded) return;
    _prefsLoaded = true;
    final prefs = await SharedPreferences.getInstance();
    final id = prefs.getString(_reciterKey);
    reciter = quranReciters.firstWhere((r) => r.id == id, orElse: () => quranReciters.first);
    notifyListeners();
  }

  Future<_QuranAudioHandler> _ensureHandler() {
    return _initFuture ??= () async {
      final player = AudioPlayer();
      _QuranAudioHandler handler;
      try {
        handler = await AudioService.init(
          builder: () => _QuranAudioHandler(this, player),
          config: AudioServiceConfig(
            androidNotificationChannelId: 'com.hekzapot.umrerehberim.quran_audio',
            androidNotificationChannelName: l10n.coreQuranTitle,
            androidNotificationChannelDescription: l10n.coreChannelQuranDesc,
            androidNotificationIcon: 'mipmap/ic_launcher',
            androidStopForegroundOnPause: true,
          ),
        );
      } catch (e) {
        // Arka plan servisi kurulamazsa yine de uygulama içinde çalsın.
        debugPrint('QuranAudioService: AudioService.init hatası: $e');
        handler = _QuranAudioHandler(this, player);
      }
      _handler = handler;
      return handler;
    }();
  }

  // ---------------------------------------------------------------- oynatma

  Future<QuranPlayResult> playSurah(int no) async {
    if (telsizBusy) return QuranPlayResult.blockedByTelsiz;
    await stopPreview();
    await stopAyah();
    await loadPrefs();
    final h = await _ensureHandler();
    final surah = no.clamp(1, 114);
    currentSurah = surah;
    isLoading = true;
    error = null;
    position.value = Duration.zero;
    duration = Duration.zero;
    notifyListeners();
    try {
      final d = await h.load(
        MediaItem(
          id: reciter.urlFor(surah),
          title: surahTitle(surah),
          artist: reciter.displayName,
          album: l10n.coreQuranTitle,
          displaySubtitle:
              '${l10n.coreAyahCount(surahByNo(surah)['ayahCount'] as int)} • ${surahPlaceLabel(surahByNo(surah))}',
        ),
        reciter.urlFor(surah),
      );
      duration = d ?? Duration.zero;
      isLoading = false;
      notifyListeners();
      unawaited(h.play());
      return QuranPlayResult.ok;
    } catch (e) {
      isLoading = false;
      error = l10n.coreAudioLoadFailed;
      debugPrint('QuranAudioService: $e');
      notifyListeners();
      return QuranPlayResult.error;
    }
  }

  /// Oynat/duraklat. Henüz parça yoksa [fallbackSurah] çalınır.
  Future<QuranPlayResult> togglePlay({int fallbackSurah = 1}) async {
    final h = _handler;
    if (h == null || currentSurah == null) return playSurah(fallbackSurah);
    if (h.player.playing) {
      await h.pause();
      return QuranPlayResult.ok;
    }
    if (telsizBusy) return QuranPlayResult.blockedByTelsiz;
    await stopPreview();
    await stopAyah();
    if (h.player.processingState == ProcessingState.idle) return playSurah(currentSurah!);
    unawaited(h.play());
    return QuranPlayResult.ok;
  }

  Future<QuranPlayResult> next() async {
    final cur = currentSurah ?? 0;
    if (cur >= 114) return QuranPlayResult.ok;
    return playSurah(cur + 1);
  }

  Future<QuranPlayResult> previous() async {
    final h = _handler;
    // Surenin başından uzaksak önce başa sar.
    if (h != null && h.player.position > const Duration(seconds: 5)) {
      await h.seek(Duration.zero);
      return QuranPlayResult.ok;
    }
    final cur = currentSurah ?? 2;
    if (cur <= 1) return QuranPlayResult.ok;
    return playSurah(cur - 1);
  }

  Future<void> seekFraction(double f) async {
    final h = _handler;
    if (h == null || duration == Duration.zero) return;
    await h.seek(duration * f.clamp(0.0, 1.0));
  }

  Future<void> pause() async => _handler?.pause();

  Future<void> stop() async {
    await _handler?.stop();
    notifyListeners();
  }

  Future<void> setReciter(QuranReciter r) async {
    if (r.id == reciter.id) return;
    reciter = r;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_reciterKey, r.id);
    notifyListeners();
    // Çalan sure varsa yeni imamla baştan başlat.
    if (isPlaying && currentSurah != null) await playSurah(currentSurah!);
  }

  // -------------------------------------------------------------- önizleme

  /// İmamın Fatiha okumasından kısa önizleme. Aynı imama tekrar basınca durur.
  Future<QuranPlayResult> preview(QuranReciter r) async {
    if (previewingId == r.id) {
      await stopPreview();
      return QuranPlayResult.ok;
    }
    if (telsizBusy) return QuranPlayResult.blockedByTelsiz;
    await stopPreview();
    if (isPlaying) await pause();
    final p = _previewPlayer ??= AudioPlayer();
    previewingId = r.id;
    notifyListeners();
    try {
      await p.setUrl(r.urlFor(1));
      unawaited(p.play());
      // 25 saniye sonra kendiliğinden dursun.
      Future.delayed(const Duration(seconds: 25), () {
        if (previewingId == r.id) stopPreview();
      });
      p.processingStateStream.firstWhere((s) => s == ProcessingState.completed).then((_) {
        if (previewingId == r.id) stopPreview();
      });
      return QuranPlayResult.ok;
    } catch (e) {
      debugPrint('QuranAudioService önizleme: $e');
      previewingId = null;
      notifyListeners();
      return QuranPlayResult.error;
    }
  }

  Future<void> stopPreview() async {
    if (previewingId == null) return;
    previewingId = null;
    notifyListeners();
    await _previewPlayer?.stop();
  }

  // ------------------------------------------------------------ ayet sesi

  /// Çalan ayet ("2:255"); yoksa null.
  String? playingAyahKey;
  AudioPlayer? _ayahPlayer;

  /// Seçili imamın sesinden tek ayet çalar. Aynı ayete tekrar basınca durur.
  /// İmamın ayet kaydı yoksa [QuranPlayResult.error] döner (çağıran
  /// `reciter.hasAyahAudio` ile önceden kontrol etmeli).
  Future<QuranPlayResult> playAyah(int surah, int ayah) async {
    final key = '$surah:$ayah';
    if (playingAyahKey == key) {
      await stopAyah();
      return QuranPlayResult.ok;
    }
    if (telsizBusy) return QuranPlayResult.blockedByTelsiz;
    await loadPrefs();
    final url = reciter.ayahUrlFor(surah, ayah);
    if (url == null) return QuranPlayResult.error;
    await stopPreview();
    if (isPlaying) await pause();
    final p = _ayahPlayer ??= AudioPlayer();
    playingAyahKey = key;
    error = null;
    notifyListeners();
    try {
      await p.setUrl(url);
      unawaited(p.play());
      p.processingStateStream.firstWhere((s) => s == ProcessingState.completed).then((_) {
        if (playingAyahKey == key) stopAyah();
      });
      return QuranPlayResult.ok;
    } catch (e) {
      debugPrint('QuranAudioService ayet: $e');
      playingAyahKey = null;
      error = l10n.coreAudioLoadFailed;
      notifyListeners();
      return QuranPlayResult.error;
    }
  }

  Future<void> stopAyah() async {
    if (playingAyahKey == null) return;
    playingAyahKey = null;
    notifyListeners();
    await _ayahPlayer?.stop();
  }

  // ------------------------------------------------------------- dahili

  void _onTelsizChanged() {
    if (!telsizBusy) return;
    if (isPlaying) pause();
    if (previewingId != null) stopPreview();
    if (playingAyahKey != null) stopAyah();
  }

  void _onPlayerChanged() => notifyListeners();

  void _onCompleted() {
    final cur = currentSurah;
    if (cur != null && cur < 114 && !telsizBusy) {
      playSurah(cur + 1);
    } else {
      notifyListeners();
    }
  }
}

/// Bildirim / kilit ekranı ile `just_audio` oynatıcısı arasındaki köprü.
class _QuranAudioHandler extends BaseAudioHandler with SeekHandler {
  _QuranAudioHandler(this.owner, this.player) {
    player.playbackEventStream.listen(
      (_) => _broadcast(),
      onError: (Object e, StackTrace _) {
        debugPrint('QuranAudioHandler: $e');
      },
    );
    player.playingStream.listen((_) {
      _broadcast();
      owner._onPlayerChanged();
    });
    player.processingStateStream.listen((s) {
      if (s == ProcessingState.completed) owner._onCompleted();
    });
    player.positionStream.listen((p) => owner.position.value = p);
    player.durationStream.listen((d) {
      if (d != null && d != owner.duration) {
        owner.duration = d;
        final item = mediaItem.value;
        if (item != null) mediaItem.add(item.copyWith(duration: d));
        owner._onPlayerChanged();
      }
    });
  }

  final QuranAudioService owner;
  final AudioPlayer player;

  Future<Duration?> load(MediaItem item, String url) async {
    mediaItem.add(item);
    final d = await player.setUrl(url);
    if (d != null) mediaItem.add(item.copyWith(duration: d));
    return d;
  }

  @override
  Future<void> play() async {
    if (QuranAudioService.telsizBusy) return;
    await player.play();
  }

  @override
  Future<void> pause() => player.pause();

  @override
  Future<void> seek(Duration position) => player.seek(position);

  @override
  Future<void> skipToNext() async => owner.next();

  @override
  Future<void> skipToPrevious() async => owner.previous();

  @override
  Future<void> stop() async {
    await player.stop();
    await super.stop();
  }

  void _broadcast() {
    final playing = player.playing;
    playbackState.add(
      playbackState.value.copyWith(
        controls: [
          MediaControl.skipToPrevious,
          if (playing) MediaControl.pause else MediaControl.play,
          MediaControl.skipToNext,
        ],
        systemActions: const {MediaAction.seek, MediaAction.seekForward, MediaAction.seekBackward},
        androidCompactActionIndices: const [0, 1, 2],
        processingState: const {
          ProcessingState.idle: AudioProcessingState.idle,
          ProcessingState.loading: AudioProcessingState.loading,
          ProcessingState.buffering: AudioProcessingState.buffering,
          ProcessingState.ready: AudioProcessingState.ready,
          ProcessingState.completed: AudioProcessingState.completed,
        }[player.processingState]!,
        playing: playing,
        updatePosition: player.position,
        bufferedPosition: player.bufferedPosition,
        speed: player.speed,
      ),
    );
  }
}
