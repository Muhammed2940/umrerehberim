// KURTARILAN İSKELET: lib/features/home/screens/rehber_iletisim.dart
// Bu dosya release APK'dan (libapp.so) blutter ile çıkarılan bilgilerden otomatik üretildi.
// Derlenmez. Sınıf ve fonksiyon adları, kullanılan metinler, widget'lar ve çağrılar gerçektir;
// fonksiyon gövdelerini bunlara bakarak yeniden yazman gerekir. Ayrıntılı makine kodu: _blutter_asm/

// ---- Üst düzey (top-level) fonksiyonlar ----
class _TopLevel {
}

class _RehberIletisimPageState extends State<dynamic> {
  // _ initState(/* No info */)
  //   çağrı: _RehberIletisimPageState._loadData   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // _ _loadData(/* No info */) async
  //   Metinler: 'Rehber bilgileri yüklenirken hata: '
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   çağrı: _RehberIletisimPageState._determineActiveTrip   [umrem_demo/features/home/screens/rehber_iletisim.dart]
  //   çağrı: _RehberIletisimPageState._loadTripManager   [umrem_demo/features/home/screens/rehber_iletisim.dart]
  //   çağrı: _RehberIletisimPageState._listenToManagerLocation   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // _ _listenToManagerLocation(/* No info */)
  //   Metinler: 'locations/'
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseDatabase.instanceFor   [firebase_database/firebase_database.dart]
  //   çağrı: FirebaseDatabase.ref   [firebase_database/firebase_database.dart]
  //   çağrı: Query.onValue   [firebase_database/firebase_database.dart]

  // [closure] void <anonymous closure>(dynamic, DatabaseEvent)
  //   çağrı: DatabaseEvent.snapshot   [firebase_database/firebase_database.dart]
  //   çağrı: DataSnapshotPlatform.value   [firebase_database_platform_interface/src/platform_interface/platform_interface_data_snapshot.dart]
  //   çağrı: State.setState   [flutter/src/widgets/framework.dart]
  //   Tipler: Map?

  // [closure] void <anonymous closure>(dynamic)
  //   Widget/nesneler: DateTime
  //   Metinler: 'latitude' | 'longitude' | 'updatedAt'
  //   Tipler: num?, int?

  // _ _loadTripManager(/* No info */) async
  //   Metinler: 'Yönetici bilgisi alınırken hata: '
  //   çağrı: FirestoreService.getTripManagerIds   [umrem_demo/common/services/firestore_service.dart]
  //   çağrı: FirestoreService.getUserByToken   [umrem_demo/common/services/firestore_service.dart]

  // _ _determineActiveTrip(/* No info */) async
  //   Widget/nesneler: DateTime
  //   Metinler: 'mekke' | 'medine'
  //   çağrı: FirestoreService.getTripById   [umrem_demo/common/services/firestore_service.dart]

  // [closure] void <anonymous closure>(dynamic)

  // [closure] void <anonymous closure>(dynamic)

  // _ build(/* No info */)
  //   Widget/nesneler: BoxDecoration, Icon, IconButton, Container, Radius, BorderRadius, TextStyle, Text, AppBar, Scaffold
  //   Metinler: 'Rehberle İletişim'
  //   çağrı: _RehberIletisimPageState._buildNoManagerView   [umrem_demo/features/home/screens/rehber_iletisim.dart]
  //   çağrı: _RehberIletisimPageState._buildContent   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // _ _buildContent(/* No info */)
  //   Widget/nesneler: Column, Padding, SingleChildScrollView
  //   Metinler: 'Telefon bilgisi yok'
  //   çağrı: _RehberIletisimPageState._buildTripInfoCard   [umrem_demo/features/home/screens/rehber_iletisim.dart]
  //   çağrı: _RehberIletisimPageState._buildMapSection   [umrem_demo/features/home/screens/rehber_iletisim.dart]
  //   çağrı: _RehberIletisimPageState._buildManagerInfoCard   [umrem_demo/features/home/screens/rehber_iletisim.dart]
  //   çağrı: _RehberIletisimPageState._buildContactItem   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // _ _buildContactItem(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Icon, Container, TextStyle, Text, Column, Expanded, Row, InkWell
  //   Metinler: 'Telefon'

  // _ _buildManagerInfoCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Text, CircleAvatar, Column, Expanded, Icon, Row, Container, InkWell
  //   Metinler: '\\?' | 'İsim bilgisi yok'

  // [closure] Future<void> _openMaps(dynamic)
  //   çağrı: _RehberIletisimPageState._openMaps   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // _ _openMaps(/* No info */) async
  //   Metinler: 'https://www.google.com/maps/search/\\?api=1&query=' | ',' | 'Harita açılamadı: '
  //   çağrı: .launchUrl   [url_launcher/src/url_launcher_uri.dart]

  // _ _buildMapSection(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxShadow, BoxDecoration, Image, Icon, TextStyle, Text, Column, Expanded, Row, Container, Positioned, Stack, ClipRRect, GestureDetector
  //   Metinler: 'https://maps.googleapis.com/maps/api/staticmap\\?center=' | ',' | '&zoom=15&size=600x300&scale=2&maptype=roadmap&markers=color:red%7Clabel:R%7C' | '&key=AIzaSyAKYVbWruYnNmvIxFRTY0SxByrf356KiUA' | 'Rehberin Konumu'
  //   çağrı: _RehberIletisimPageState._buildMapPlaceholder   [umrem_demo/features/home/screens/rehber_iletisim.dart]
  //   çağrı: _RehberIletisimPageState._formatLastUpdated   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // _ _formatLastUpdated(/* No info */)
  //   Widget/nesneler: DateTime
  //   Metinler: 'Az önce güncellendi' | ' dk önce güncellendi' | ' saat önce güncellendi' | ' gün önce güncellendi'

  // _ _buildMapPlaceholder(/* No info */)
  //   Widget/nesneler: LinearGradient, BoxDecoration, Icon, TextStyle, Text, Padding, Column, Center, Container
  //   Metinler: 'isError' | 'Harita yüklenemedi' | 'Rehber konumu bekleniyor...' | 'Harita yükleniyor...' | "Haritayı Google Maps\\'te açmak için tıklayın"

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, Widget, ImageChunkEvent?)
  //   çağrı: _RehberIletisimPageState._buildMapPlaceholder   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // [closure] Widget <anonymous closure>(dynamic, BuildContext, Object, StackTrace?)
  //   Metinler: 'Harita yükleme hatası: '
  //   çağrı: _RehberIletisimPageState._buildMapPlaceholder   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // _ _buildTripInfoCard(/* No info */)
  //   Widget/nesneler: Radius, BorderRadius, BoxDecoration, Icon, Text, TextStyle, Column, Expanded, Row, Container
  //   Metinler: 'mekke' | '. Gün • '

  // [closure] Future<void> _makePhoneCall(dynamic)
  //   çağrı: _RehberIletisimPageState._makePhoneCall   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // _ _makePhoneCall(/* No info */) async
  //   Metinler: ' ' | 'tel:' | 'Telefon açılamadı: '
  //   çağrı: .launchUrl   [url_launcher/src/url_launcher_uri.dart]

  // _ _buildNoManagerView(/* No info */)
  //   Widget/nesneler: Icon, TextStyle, Text, Column, Padding, Center
  //   Metinler: 'Aktif bir seferiniz bulunmuyor' | 'Bu sefere henüz yönetici atanmamış' | 'Lütfen acente ile iletişime geçin.'

  // dynamic dispose(dynamic)

  // [closure] void dispose(dynamic)
  //   çağrı: _RehberIletisimPageState.dispose   [umrem_demo/features/home/screens/rehber_iletisim.dart]

  // _ dispose(/* No info */)

}

class RehberIletisimPage extends StatefulWidget {
  // _ createState(/* No info */)
  //   Widget/nesneler: _RehberIletisimPageState, FirestoreService
  //   çağrı: Firebase.app   [firebase_core/firebase_core.dart]
  //   çağrı: FirebaseFirestore.instanceFor   [cloud_firestore/cloud_firestore.dart]

}
