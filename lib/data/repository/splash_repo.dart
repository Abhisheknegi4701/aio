
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../utill/app_constants.dart';
import '../model/response/base/api_response.dart';
import 'package:http/http.dart' as http;

class SplashRepo {
  final SharedPreferences sharedPreferences;
  SplashRepo({required this.sharedPreferences});

  Future<ApiResponse> getConfig() async {

    return await http.get(Uri.parse(AppConstants.getConfig)).then((response){
      if (response.statusCode == 200) {
         return ApiResponse.withSuccess(response.body);
      }else{
        return ApiResponse.withError(response.body);
      }
    });
  }

  Future<bool> initSharedData(Brightness brightness) {
    if(!sharedPreferences.containsKey(AppConstants.theme)) {
      if(brightness == Brightness.dark){
        return sharedPreferences.setString(AppConstants.theme, AppConstants.themeDark);
      }else{
        return sharedPreferences.setString(AppConstants.theme, AppConstants.themeLight);
      }
    }
    // if(brightness == Brightness.dark){
    //   return sharedPreferences.setString(AppConstants.theme, AppConstants.themeDark);
    // }
    // if(brightness == Brightness.light){
    //   return sharedPreferences.setString(AppConstants.theme, AppConstants.themeLight);
    // }
    if(!sharedPreferences.containsKey(AppConstants.countryCode)) {
      return sharedPreferences.setString(AppConstants.countryCode, 'IN');
    }
    if(!sharedPreferences.containsKey(AppConstants.languageCode)) {
      return sharedPreferences.setString(AppConstants.languageCode, 'en');
    }
    if(!sharedPreferences.containsKey(AppConstants.onBoardingSkip)) {
      return sharedPreferences.setBool(AppConstants.onBoardingSkip, false);
    }
    return Future.value(true);
  }

  Future<bool> removeSharedData() {
    return sharedPreferences.clear();
  }

  void disableIntro() {
    sharedPreferences.setBool(AppConstants.onBoardingSkip, false);
  }

  bool showIntro() {
    return sharedPreferences.getBool(AppConstants.onBoardingSkip)?? true;
    //return true;
  }
}