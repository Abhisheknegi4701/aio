import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

import '../utill/app_constants.dart';
import '../view/screens/about/about.dart';
import '../view/screens/home/homescreen.dart';
import '../view/screens/language/chooselanguage.dart';
import '../view/screens/nointernet/nointernetscreen.dart';
import '../view/screens/privacy/privacypolicyscreen.dart';
import '../view/screens/setting/setting.dart';
import '../view/screens/splash/splash_screen.dart';

class RouteHelper {
  static final FluroRouter router = FluroRouter();

  static String splash = '/splash';
  static String onBoarding = '/on-boarding';
  static String menu = '/';
  static String login = '/login';
  static String home = '/home';
  static String forgetPassword = '/forget-password';
  static String signUp = '/sign-up';
  static String maintenance = '/maintenance';
  static String update = '/update';
  static String setting = '/setting';
  static String noInternet = '/noInternet';
  static String about = '/about';
  static String privacy = '/privacy';
  static String chooseLanguage = '/chooseLanguage';

  static String getMaintenanceRoute() => maintenance;
  static String getUpdateRoute() => update;
  static String getMainRoute() => menu;
  static String getLoginRoute() => login;
  static final Handler _splashHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    return const SplashScreen();
  });
  // static final Handler _onBoardingHandler =
  //     Handler(handlerFunc: (context, Map<String, dynamic> params) {
  //   return OnBoardingScreen();
  // });
  // static final Handler _loginHandler =
  //     Handler(handlerFunc: (context, Map<String, dynamic> params) {
  //   return const LoginScreen();
  // });
  // static final Handler _signUpHandler =
  //     Handler(handlerFunc: (context, Map<String, dynamic> params) {
  //   return CreateAccountScreen();
  // });
  static final Handler _menuHandler = Handler(
      handlerFunc: (context, Map<String, dynamic>? params) =>
          const SplashScreen());
  static final Handler _homeHandler = Handler(
      handlerFunc: (context, Map<String, dynamic>? params) =>
          const HomeScreen());
  static final Handler _settingHandler = Handler(
      handlerFunc: (context, Map<String, dynamic>? params) =>
          const SettingScreen());
  static final Handler _noInternetHandler = Handler(
      handlerFunc: (context, Map<String, dynamic>? params) =>
          const NoInternet());
  static final Handler _aboutHandler = Handler(
      handlerFunc: (context, Map<String, dynamic>? params) =>
          const AboutScreen());
  static final Handler _privacyHandler = Handler(
      handlerFunc: (context, Map<String, dynamic>? params) =>
          const PrivacyPolicyScreen());
  static final Handler _chooseLanguageHandler =
      Handler(handlerFunc: (context, Map<String, dynamic> params) {
    final Object? args = ModalRoute.of(context!)?.settings.arguments;
    return ChooseLanguage(from: "${args ?? AppConstants.setting}");
  });

  static void setupRouter() {
    router.define(splash,
        handler: _splashHandler, transitionType: TransitionType.fadeIn);
    // router.define(onBoarding,
    //     handler: _onBoardingHandler, transitionType: TransitionType.fadeIn);
    // router.define(login,
    //     handler: _loginHandler, transitionType: TransitionType.fadeIn);
    router.define(menu,
        handler: _menuHandler, transitionType: TransitionType.fadeIn);
    // router.define(signUp,
    //     handler: _signUpHandler, transitionType: TransitionType.fadeIn);
    router.define(home,
        handler: _homeHandler, transitionType: TransitionType.fadeIn);
    router.define(setting,
        handler: _settingHandler, transitionType: TransitionType.fadeIn);
    router.define(noInternet,
        handler: _noInternetHandler, transitionType: TransitionType.fadeIn);
    router.define(about,
        handler: _aboutHandler, transitionType: TransitionType.fadeIn);
    router.define(privacy,
        handler: _privacyHandler, transitionType: TransitionType.fadeIn);
    router.define(chooseLanguage,
        handler: _chooseLanguageHandler, transitionType: TransitionType.fadeIn);
  }
}
