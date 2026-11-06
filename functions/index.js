// Umre Rehberim – Cloud Functions (2. nesil)
// Bölge: europe-west1. Uygulamada FirebaseFunctions.instanceFor(region: 'europe-west1') kullanılır.
const { onCall, HttpsError } = require("firebase-functions/v2/https");
const { setGlobalOptions } = require("firebase-functions/v2");
const admin = require("firebase-admin");

admin.initializeApp();
setGlobalOptions({ region: "europe-west1", maxInstances: 10 });

const db = admin.firestore();

const ADMIN_TYPES = ["yonetici", "super_admin"];

/**
 * Auth kullanıcısını (uid = users belge id'si) yoksa oluşturur, varsa adını günceller.
 * Önce kullanıcı var mı diye bakılır; setCustomUserClaims yok olan kullanıcıda hata verir.
 */
async function ensureAuthUser(uid, displayName) {
  const props = displayName ? { displayName } : {};
  try {
    await admin.auth().getUser(uid);
    if (displayName) await admin.auth().updateUser(uid, props);
  } catch (e) {
    if (e.code !== "auth/user-not-found") throw e;
    await admin.auth().createUser({ uid, ...props });
  }
}

/**
 * TC kimlik no ile giriş.
 * Eski uygulamada istemci Firestore'u doğrudan sorguluyordu; bu, herkesin bütün
 * kullanıcıları okuyabilmesi demekti. Artık sorgu sunucuda yapılıyor, istemciye
 * yalnızca o kullanıcıya ait bir giriş anahtarı (custom token) dönüyor.
 *
 * data: { tc: '11 hane', userType: 'misafir' | 'yonetici' | 'super_admin' }
 * Dönüş: { token, userId, role, agencyId }
 */
exports.loginWithTc = onCall(async (req) => {
  const tc = String(req.data?.tc || "").trim();
  const requestedType = String(req.data?.userType || "misafir");
  if (!/^\d{11}$/.test(tc)) {
    throw new HttpsError("invalid-argument", "TC kimlik numarası 11 haneli olmalıdır");
  }

  const snap = await db.collection("users").where("user_tc", "==", tc).limit(1).get();
  if (snap.empty) {
    throw new HttpsError("not-found", "Kullanıcı bulunamadı. Lütfen kayıt olun.");
  }
  const doc = snap.docs[0];
  const u = doc.data();
  const actualType = ADMIN_TYPES.includes(u.user_type) ? u.user_type : "misafir";
  const isAdminType = ADMIN_TYPES.includes(actualType);
  // Giriş ekranında "Yönetici" seçeneği hem yonetici hem super_admin içindir.
  const wantsAdmin = ADMIN_TYPES.includes(requestedType);

  if (wantsAdmin !== isAdminType) {
    const label = isAdminType ? "yönetici" : "misafir";
    throw new HttpsError("permission-denied", `Bu hesap ${label} hesabıdır.`);
  }

  // agencyId boş metin ya da yoksa null. Kurallarda super_admin agencyId'ye bakmaz;
  // acentesiz bir misafir/yönetici hiçbir acente verisini göremez.
  const agencyId = typeof u.agency_id === "string" && u.agency_id.trim() !== "" ? u.agency_id.trim() : null;
  const claims = { role: actualType, agencyId };

  // Sıra önemli: önce Auth kullanıcısı, sonra kalıcı claim'ler, en son token.
  await ensureAuthUser(doc.id, u.user_name || "");
  await admin.auth().setCustomUserClaims(doc.id, claims);
  // Token'a da claim'ler konuyor; böylece ilk ID token'da hemen geçerli olurlar.
  const token = await admin.auth().createCustomToken(doc.id, claims);
  return { token, userId: doc.id, role: actualType, agencyId };
});

function requireAdmin(req) {
  if (!req.auth) throw new HttpsError("unauthenticated", "Önce giriş yapmalısınız.");
  const role = req.auth.token?.role;
  if (!ADMIN_TYPES.includes(role)) {
    throw new HttpsError("permission-denied", "Bu işlem için yönetici yetkisi gerekir.");
  }
  return { role, agencyId: req.auth.token?.agencyId || null };
}

/**
 * Yönetici yalnızca kendi acentesinin topic'lerine gönderebilir:
 *   agency_<kendi acentesi>  veya  trip_<kendi acentesine ait sefer>
 * super_admin her topic'e gönderebilir.
 */
async function assertTopicAllowed(caller, topic) {
  if (!/^[a-zA-Z0-9\-_.~%]+$/.test(topic)) {
    throw new HttpsError("invalid-argument", `Geçersiz topic: ${topic}`);
  }
  if (caller.role === "super_admin") return;
  if (!caller.agencyId) throw new HttpsError("permission-denied", "Hesabınıza acente atanmamış.");
  if (topic === `agency_${caller.agencyId}`) return;
  if (topic.startsWith("trip_")) {
    const trip = await db.collection("trips").doc(topic.substring(5)).get();
    if (trip.exists && trip.get("agency_id") === caller.agencyId) return;
  }
  throw new HttpsError("permission-denied", `Bu konuya bildirim gönderme yetkiniz yok: ${topic}`);
}

function buildMessage(title, body) {
  return {
    notification: { title: String(title), body: String(body || "") },
    android: { priority: "high", notification: { channelId: "high_importance_channel" } },
  };
}

/** Bir konuya (topic) abone olan herkese bildirim gönderir. */
exports.sendPushToTopic = onCall(async (req) => {
  const caller = requireAdmin(req);
  const { topic, title, body } = req.data || {};
  if (!topic || !title) throw new HttpsError("invalid-argument", "topic ve title gerekli");
  await assertTopicAllowed(caller, String(topic));
  const id = await admin.messaging().send({ topic: String(topic), ...buildMessage(title, body) });
  return { success: true, messageId: id };
});

/** Koşula göre bildirim, örn. "'agency_X' in topics && 'trip_Y' in topics" */
exports.sendPushToCondition = onCall(async (req) => {
  const caller = requireAdmin(req);
  const { condition, title, body } = req.data || {};
  if (!condition || !title) throw new HttpsError("invalid-argument", "condition ve title gerekli");
  const topics = [...String(condition).matchAll(/'([^']+)'\s+in\s+topics/g)].map((m) => m[1]);
  if (topics.length === 0) throw new HttpsError("invalid-argument", "Koşulda topic bulunamadı");
  for (const t of topics) await assertTopicAllowed(caller, t);
  const id = await admin.messaging().send({ condition: String(condition), ...buildMessage(title, body) });
  return { success: true, messageId: id };
});
