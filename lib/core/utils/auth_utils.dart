/// Kullanıcı ID / TC ile Firebase Auth (e-posta/şifre) hesabı arasındaki eşleme.
///
/// Spark planında Cloud Functions ve sunucu olmadığı için her kullanıcının bir
/// e-posta/şifre hesabı vardır. `users/{uid}` belgesinin id'si bu hesabın uid'sidir.
///
/// Firebase kimlik modunda (AUTH_API boş) e-posta `id<loginId>@umrerehberim.app`,
/// şifre kullanıcının şifresidir; TC ile giriş yoktur. Eski TC e-postaları
/// (`<11 hane>@...`) yalnız taşıma betiği (`tool/id_gecis.js`) ve kök hesap içindir.
library;

import 'dart:math';

/// Auth e-postalarının alan adı.
const String authEmailDomain = 'umrerehberim.app';

/// Kök süper admin (seed ve güvenlik kurallarındaki bootstrap hesabı). E-postası
/// `<tc>@umrerehberim.app` DEĞİŞMEZ: firestore.rules `isRoot()` buna bakar.
const String rootSuperAdminTc = '10000000146';

/// Kök süper adminin sabit Kullanıcı ID'si (7 hane). Giriş ekranı bu ID'yi kökün
/// e-postasına eşler; başka hiçbir hesaba bu ID verilmez (üretici atlar, kurallar reddeder).
/// tool/seed.js ve tool/id_gecis.js içindeki ROOT_LOGIN_ID ile AYNI olmalı.
const String rootLoginId = '1000146';

String tcToEmail(String tc) => '${tc.trim()}@$authEmailDomain';

String tcToPassword(String tc) => tc.trim();

/// Firebase kimlik modundaki e-posta: `id<loginId>@umrerehberim.app`.
String loginIdToEmail(String loginId) => 'id${loginId.trim()}@$authEmailDomain';

/// Girişte kullanılacak e-posta: kök ID'si kökün (TC'li) e-postasına, diğerleri `id<loginId>@...`'e gider.
String loginIdToAuthEmail(String loginId) {
  final id = loginId.trim();
  return id == rootLoginId ? tcToEmail(rootSuperAdminTc) : loginIdToEmail(id);
}

/// Auth e-postasından Kullanıcı ID'si (`id<ID>@...`; kökün e-postası kök ID'sine); yoksa null.
String? loginIdFromEmail(String? email) {
  final e = (email ?? '').trim().toLowerCase();
  if (e == tcToEmail(rootSuperAdminTc)) return rootLoginId;
  final m = RegExp(r'^id([1-9][0-9]{6})@umrerehberim\.app$').firstMatch(e);
  return m?.group(1);
}

final Random _rng = Random.secure();

/// Rastgele 7 haneli Kullanıcı ID (ilk hane 1-9, kök ID hariç).
String generateLoginId() {
  while (true) {
    final b = StringBuffer('${1 + _rng.nextInt(9)}');
    for (var i = 0; i < 6; i++) {
      b.write(_rng.nextInt(10));
    }
    final id = b.toString();
    if (id != rootLoginId) return id;
  }
}

const String _pwLetters = 'ABCDEFGHJKLMNPQRSTUVWXYZabcdefghijkmnpqrstuvwxyz'; // I, l, O, o yok
const String _pwDigits = '23456789'; // 0, 1 yok

/// Rastgele şifre: harf + rakam, karışan karakterler (0/O, 1/l/I) yok. Misafir 8, personel 10 karakter.
/// En az bir harf ve bir rakam içerir.
String generatePassword({int length = 8}) {
  assert(length >= 8);
  final chars = <String>[
    _pwLetters[_rng.nextInt(_pwLetters.length)],
    _pwDigits[_rng.nextInt(_pwDigits.length)],
    for (var i = 2; i < length; i++)
      (_pwLetters + _pwDigits)[_rng.nextInt(_pwLetters.length + _pwDigits.length)],
  ]..shuffle(_rng);
  return chars.join();
}

const Set<String> _commonPasswords = {
  'password', 'password1', 'password123', 'parola123', 'parolam123', 'sifre123', 'sifre1234', 'sifrem123',
  'qwertyui', 'qwerty123', 'qwertyuiop', '1q2w3e4r', '1qaz2wsx', 'asdfghjk', 'asdf1234', 'iloveyou',
  'umre1234', 'umrerehberim', 'umre2026', 'hekzapot', 'hekzapot1', 'admin123', 'admin1234', 'abc12345',
  'abcd1234', 'test1234', 'welcome1', 'allah123', 'muhammed', 'muhammed1', 'bismillah',
};

/// Kolay tahmin edilir şifre mi (kullanıcının seçtiği şifreler için; üretilenler zaten rastgele).
/// Zayıf sayılanlar: hepsi aynı karakter, yalnız rakam, artan/azalan dizi (12345678, abcdefgh),
/// tekrarlayan kalıp (abababab, 12341234), yaygın şifre listesi ve Kullanıcı ID'sini içeren şifre.
/// Uzunluk denetimi ayrıdır (en az 8).
bool isWeakPassword(String password, {String? loginId}) {
  final p = password.toLowerCase();
  if (p.isEmpty) return true;
  if (p.split('').toSet().length == 1) return true;
  if (RegExp(r'^[0-9]+$').hasMatch(p)) return true;
  if (_commonPasswords.contains(p)) return true;
  final id = loginId?.trim() ?? '';
  if (id.isNotEmpty && p.contains(id)) return true;

  // Artan / azalan dizi (her adım +1 ya da -1).
  final u = p.codeUnits;
  final step = u.length > 1 ? u[1] - u[0] : 0;
  if (step == 1 || step == -1) {
    var seq = true;
    for (var i = 1; i < u.length; i++) {
      if (u[i] - u[i - 1] != step) {
        seq = false;
        break;
      }
    }
    if (seq) return true;
  }

  // Tekrarlayan kalıp: p = birim * k (k >= 2).
  for (var n = 1; n <= p.length ~/ 2; n++) {
    if (p.length % n != 0) continue;
    if (p.substring(0, n) * (p.length ~/ n) == p) return true;
  }
  return false;
}
