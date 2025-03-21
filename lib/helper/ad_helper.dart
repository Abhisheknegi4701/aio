import 'dart:io';

import '../utill/app_constants.dart';

class AdHelper {
  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return AppConstants.bannerAndroidAdUnitId;
    } else if (Platform.isIOS) {
      return AppConstants.bannerIOSAdUnitId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return AppConstants.interstitialAndroidAdUnitId;
    } else if (Platform.isIOS) {
      return AppConstants.interstitialIOSAdUnitId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return AppConstants.rewardedAndroidAdUnitId;
    } else if (Platform.isIOS) {
      return AppConstants.rewardedIOSAdUnitId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
