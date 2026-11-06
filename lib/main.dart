import 'dart:async';

import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'app/routes.dart';
import 'common/services/background_location_service.dart';
import 'common/services/firebase_messaging_service.dart';
import 'core/providers/app_state_provider.dart';
import 'core/providers/locale_provider.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/global_snackbar.dart';
import 'features/admin/providers/admin_provider.dart';
import 'features/admin/providers/agency_provider.dart';
import 'features/admin/providers/currency_provider.dart';
import 'features/admin/providers/event_provider.dart';
import 'features/admin/providers/notification_provider.dart';
import 'features/auth/providers/login_provider.dart';
import 'features/dualar/providers/quran_provider.dart';
import 'features/dualar/providers/say_dualari_download_provider.dart';
import 'features/dualar/providers/tavaf_dualari_download_provider.dart';
import 'features/home/providers/home_provider.dart';
import 'features/splash/providers/splash_provider.dart';
import 'core/utils/firebase_init.dart';
import 'l10n/gen/app_localizations.dart';

/// Açılış: ekran HEMEN çizilir (logo + "Başlatılıyor..."), servisler arkadan
/// süre sınırıyla başlatılır. Bir adım hata verirse siyah ekranda kalmak yerine
/// hata metni ekranda gösterilir.
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const _Bootstrap());
}

/// runApp'ten önce yapılması gereken her şey. Sadece Firebase zorunlu;
/// diğer adımlar başarısız olsa da uygulama açılır.
Future<void> _initServices() async {
  // Uygulama dili (tr / en / ar): kayıtlı seçim yüklenir, Intl tarih biçimleri hazırlanır.
  try {
    await localeProvider.load().timeout(const Duration(seconds: 5));
  } catch (e) {
    debugPrint('localeProvider.load: $e');
  }

  await ensureFirebaseInitialized().timeout(const Duration(seconds: 20));

  if (!kDebugMode) {
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;
    PlatformDispatcher.instance.onError = (error, stack) {
      FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
      return true;
    };
  }

  try {
    FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
  } catch (e) {
    debugPrint('onBackgroundMessage: $e');
  }
  // Bildirim ve arka plan servisi açılışı bekletmesin.
  unawaited(FirebaseApi()
      .initNotifications(onForegroundMessage: (m) {
        final n = m.notification;
        if (n != null) GlobalSnackbar.showInfo('${n.title ?? ''}\n${n.body ?? ''}'.trim());
      })
      .timeout(const Duration(seconds: 15))
      .catchError((Object e) => debugPrint('initNotifications: $e')));
  unawaited(BackgroundLocationService.configure());
}

class _Bootstrap extends StatefulWidget {
  const _Bootstrap();

  @override
  State<_Bootstrap> createState() => _BootstrapState();
}

class _BootstrapState extends State<_Bootstrap> {
  late Future<void> _init = _initServices();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _init,
      builder: (context, snap) {
        if (snap.connectionState == ConnectionState.done && !snap.hasError) return const MyApp();
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.light(),
          home: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(24),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset('assets/images/play_store_512.png', width: 140, height: 140),
                      const SizedBox(height: 24),
                      if (!snap.hasError) ...[
                        const CircularProgressIndicator(),
                        const SizedBox(height: 16),
                        Text(l10n.coreStarting),
                      ] else ...[
                        Text(l10n.coreStartFailed,
                            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Text('${snap.error}', textAlign: TextAlign.center, style: const TextStyle(fontSize: 12)),
                        const SizedBox(height: 16),
                        ElevatedButton(
                          onPressed: () => setState(() => _init = _initServices()),
                          child: Text(l10n.commonRetry),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: localeProvider),
        ChangeNotifierProvider(create: (_) => AppStateProvider()),
        ChangeNotifierProvider(create: (_) => SplashProvider()),
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
        ChangeNotifierProvider(create: (_) => AdminProvider()),
        ChangeNotifierProvider(create: (_) => AgencyProvider()),
        ChangeNotifierProvider(create: (_) => CurrencyProvider()),
        ChangeNotifierProvider(create: (_) => EventProvider()),
        ChangeNotifierProvider(create: (_) => NotificationProvider()),
        ChangeNotifierProvider(create: (_) => QuranProvider()),
        ChangeNotifierProvider(create: (_) => SayDualariDownloadProvider()),
        ChangeNotifierProvider(create: (_) => TavafDualariDownloadProvider()),
      ],
      child: const _AppContent(),
    );
  }
}

class _AppContent extends StatelessWidget {
  const _AppContent();

  @override
  Widget build(BuildContext context) {
    final locale = context.watch<LocaleProvider>().locale;
    return MaterialApp(
      onGenerateTitle: (ctx) => AppLocalizations.of(ctx).appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      scaffoldMessengerKey: GlobalSnackbar.messengerKey,
      navigatorKey: AppRoutes.navigatorKey,
      // Arapça seçilince yön (RTL) MaterialApp tarafından kendiliğinden çevrilir.
      locale: locale,
      supportedLocales: LocaleProvider.supportedLocales,
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      initialRoute: '/',
      routes: AppRoutes.routes,
      onUnknownRoute: (settings) => MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(title: Text(context.l10n.corePageNotFound)),
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(context.l10n.coreUnknownPage, style: Theme.of(context).textTheme.titleMedium),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => Navigator.pushReplacementNamed(context, '/main'),
                  child: Text(context.l10n.coreNavHome),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
