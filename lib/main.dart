import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:allinoneapp/provider/home_provider.dart';
import 'package:allinoneapp/provider/splash_provider.dart';
import 'package:allinoneapp/provider/theme_provider.dart';
import 'package:allinoneapp/theme/dark_theme.dart';
import 'package:allinoneapp/theme/light_theme.dart';
import 'package:allinoneapp/utill/app_constants.dart';
import 'package:allinoneapp/utill/strings.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:provider/provider.dart';

import 'di_container.dart' as di;
import 'helper/responsive_helper.dart';
import 'helper/route_helper.dart';

//final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await NotificationService.init();
  await di.init();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => di.sl<ThemeProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<SplashProvider>()),
      ChangeNotifierProvider(create: (context) => di.sl<HomeProvider>()),
    ],
    child: const MyApp(
      isWeb: kIsWeb,
    ),
  ));
}

class MyApp extends StatefulWidget {
  final bool isWeb;
  const MyApp({super.key, required this.isWeb});

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    RouteHelper.setupRouter();
    // requestPermission();
    if (kIsWeb) {
      Provider.of<SplashProvider>(context, listen: false)
          .initSharedData(MediaQuery.of(context).platformBrightness);
    }
  }

  // Future<void> requestPermission() async {
  //   FirebaseMessaging messaging = FirebaseMessaging.instance;
  //
  //   NotificationSettings settings = await messaging.requestPermission(
  //     alert: true,
  //     announcement: false,
  //     badge: true,
  //     carPlay: false,
  //     criticalAlert: false,
  //     provisional: false,
  //     sound: true,
  //   );
  //
  //   if (settings.authorizationStatus == AuthorizationStatus.authorized) {
  //     print('User granted permission');
  //   } else if (settings.authorizationStatus ==
  //       AuthorizationStatus.provisional) {
  //     print('User granted provisional permission');
  //   } else {
  //     print('User declined or has not accepted permission');
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Consumer<SplashProvider>(
      builder: (context, splashProvider, child) {
        return (kIsWeb && splashProvider.configModel == null)
            ? const SizedBox()
            : GetMaterialApp(
                debugShowCheckedModeBanner: false,
                title: splashProvider.configModel != null
                    ? splashProvider.configModel!.message!.name
                    : AppConstants.appName,
                initialRoute: ResponsiveHelper.isMobilePhone()
                    ? RouteHelper.splash
                    : Provider.of<SplashProvider>(context, listen: false)
                            .configModel!
                            .message!
                            .maintenanceMode
                        ? RouteHelper.getMaintenanceRoute()
                        : RouteHelper.onBoarding,
                onGenerateRoute: RouteHelper.router.generator,
                navigatorKey: navigatorKey,
                theme: Provider.of<ThemeProvider>(context).darkTheme ==
                        AppConstants.themeDark
                    ? dark
                    : light,
                translations: LocaleString(),
                locale: Locale(
                    Provider.of<SplashProvider>(context).getLanguageCode()),
                localizationsDelegates: const [
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                supportedLocales: const [
                  Locale(AppConstants.englishLanguage),
                  Locale(AppConstants.hindiLanguage),
                ],
                scrollBehavior:
                    const MaterialScrollBehavior().copyWith(dragDevices: {
                  PointerDeviceKind.mouse,
                  PointerDeviceKind.touch,
                  PointerDeviceKind.stylus,
                  PointerDeviceKind.unknown
                }),
              );
      },
    );
  }
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class Get {
  static BuildContext? get context => navigatorKey.currentContext;
  static NavigatorState? get navigator => navigatorKey.currentState;
}

// class NotificationService {
//   static final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//
//   static Future<void> init() async {
//     // Android Initialization
//     const AndroidInitializationSettings initializationSettingsAndroid =
//         AndroidInitializationSettings('logo');
//
//     // iOS Initialization
//     const DarwinInitializationSettings initializationSettingsIOS =
//         DarwinInitializationSettings();
//
//     const InitializationSettings initializationSettings =
//         InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );
//
//     await flutterLocalNotificationsPlugin.initialize(initializationSettings,
//         onDidReceiveNotificationResponse: onSelectNotification);
//   }
//
//   static Future<void> onSelectNotification(
//       NotificationResponse? payload) async {
//     if (payload != null) {
//       var object = json.decode(payload.payload ?? "");
//       if (object != "") {
//         if (object['type'] == AppConstants.notificationMessage) {
//           if (navigatorKey.currentContext != null) {
//             if (Provider.of<AuthsProvider>(navigatorKey.currentContext!,
//                     listen: false)
//                 .isLoggedIn()) {
//               navigatorKey.currentState?.pushNamed(
//                   object['route'] ?? RouteHelper.messageScreen,
//                   arguments: {
//                     "chatId": object["value"],
//                     "homeProvider": Provider.of<HomeProvider>(
//                         navigatorKey.currentContext!,
//                         listen: false)
//                   });
//             }
//           }
//         } else if (object['type'] == AppConstants.notificationDiseaseAlert) {
//           if (navigatorKey.currentContext != null) {
//             if (Provider.of<AuthsProvider>(navigatorKey.currentContext!,
//                     listen: false)
//                 .isLoggedIn()) {
//               Provider.of<HomeProvider>(navigatorKey.currentContext!,
//                       listen: false)
//                   .updateBottomNav(navigatorKey.currentContext!,
//                       int.tryParse(object["value"]) ?? 0);
//               navigatorKey.currentState
//                   ?.pushNamed(object['route'] ?? RouteHelper.home);
//             }
//           }
//         } else if (object['type'] == AppConstants.notificationSoilAlert) {
//           if (navigatorKey.currentContext != null) {
//             if (Provider.of<AuthsProvider>(navigatorKey.currentContext!,
//                     listen: false)
//                 .isLoggedIn()) {
//               Provider.of<HomeProvider>(navigatorKey.currentContext!,
//                       listen: false)
//                   .updateBottomNav(navigatorKey.currentContext!,
//                       int.tryParse(object["value"]) ?? 0);
//               navigatorKey.currentState
//                   ?.pushNamed(object['route'] ?? RouteHelper.home);
//             }
//           }
//         }
//       }
//     }
//   }
//
//   static Future<void> showInAppNotification(
//       String title, String message, String payload) async {
//     const AndroidNotificationDetails androidDetails =
//         AndroidNotificationDetails(
//       '0', // Channel ID
//       'Technico Corp', // Channel Name
//       importance: Importance.high,
//       priority: Priority.high,
//       playSound: true,
//     );
//
//     // iOS Notification Details
//     const DarwinNotificationDetails iosDetails = DarwinNotificationDetails(
//       presentAlert: true,
//       presentBadge: true,
//       presentSound: true,
//     );
//
//     // Combining Android and iOS notification details
//     const NotificationDetails notificationDetails =
//         NotificationDetails(android: androidDetails, iOS: iosDetails);
//
//     // Show the notification
//     await flutterLocalNotificationsPlugin.show(
//       0, // Notification ID
//       title, // Notification Title
//       message, // Notification Body
//       notificationDetails,
//       payload: payload, // Optional payload
//     );
//   }
// }
