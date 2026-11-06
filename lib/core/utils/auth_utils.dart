/// TC kimlik no ile Firebase Auth (e-posta/şifre) hesabı arasındaki eşleme.
///
/// Spark planında Cloud Functions olmadığı için her kullanıcının bir
/// e-posta/şifre hesabı vardır: e-posta `<tc>@umrerehberim.app`, şifre TC'nin
/// kendisi. `users/{uid}` belgesinin id'si bu hesabın uid'sidir.
library;

/// Auth e-postalarının alan adı.
const String authEmailDomain = 'umrerehberim.app';

/// Kök süper admin (seed ve güvenlik kurallarındaki bootstrap hesabı).
const String rootSuperAdminTc = '10000000146';

String tcToEmail(String tc) => '${tc.trim()}@$authEmailDomain';

String tcToPassword(String tc) => tc.trim();
