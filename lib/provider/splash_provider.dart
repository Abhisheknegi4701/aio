import 'dart:convert';

import 'package:flutter/material.dart';

import '../data/model/response/configmodel.dart';
import '../data/repository/splash_repo.dart';
import '../utill/app_constants.dart';
import '../utill/usernotifier.dart';
import '../view/base/custom_snackbar.dart';

class SplashProvider extends ChangeNotifier {
  final SplashRepo splashRepo;
  SplashProvider({required this.splashRepo});

  ConfigModel? configModel;
  int _pageIndex = 0;
  bool _fromSetting = false;
  bool _firstTimeConnectionCheck = true;

  int get pageIndex => _pageIndex;
  bool get fromSetting => _fromSetting;
  bool get firstTimeConnectionCheck => _firstTimeConnectionCheck;

  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;

  void setSelectIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }

  Future<bool> initConfig(BuildContext context) async {
    return await splashRepo.getConfig().then((apiResponse) {
      if (apiResponse.response != null) {
        UserNotifier.configModel =
            ConfigModel.fromJson(json.decode(apiResponse.response));
        notifyListeners();
        return true;
      } else {
        if (context.mounted) {
          showCustomSnackBar(apiResponse.error.toString(), context,
              isError: true);
        }
        return false;
      }
    });
  }

  void setFirstTimeConnectionCheck(bool isChecked) {
    _firstTimeConnectionCheck = isChecked;
  }

  void setPageIndex(int index) {
    _pageIndex = index;
    notifyListeners();
  }

  Future<bool> initSharedData(Brightness brightness) {
    return splashRepo.initSharedData(brightness);
  }

  Future<bool> removeSharedData() {
    return splashRepo.removeSharedData();
  }

  void setFromSetting(bool isSetting) {
    _fromSetting = isSetting;
  }

  String getLanguageCode() {
    return splashRepo.sharedPreferences.getString(AppConstants.languageCode) ??
        AppConstants.englishLanguage;
  }

  bool showIntro() {
    return splashRepo.showIntro();
  }

  void disableIntro() {
    splashRepo.disableIntro();
  }
}
