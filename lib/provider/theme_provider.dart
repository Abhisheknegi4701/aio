import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../utill/app_constants.dart';

class ThemeProvider with ChangeNotifier {
  final SharedPreferences sharedPreferences;
  ThemeProvider({required this.sharedPreferences}) {
    _loadCurrentTheme();
  }

  String _darkTheme = "";
  String get darkTheme => _darkTheme;

  void toggleTheme(String theme) {
    _darkTheme = theme;
    sharedPreferences.setString(AppConstants.theme, theme);
    notifyListeners();
  }

  // void toggleSwitch(bool value) {
  //   if (_isSwitched == false) {
  //     _isSwitched = true;
  //     textValue = 'Switch Button is ON';
  //     print('Switch Button is ON');
  //     Get.find<ThemeController>().toggleTheme();
  //     update();
  //
  //   } else {
  //     _isSwitched = false;
  //     textValue = 'Switch Button is OFF';
  //     print('Switch Button is OFF');
  //     Get.find<ThemeController>().toggleTheme();
  //     update();
  //   }
  // }

  void _loadCurrentTheme() async {
    _darkTheme = sharedPreferences.getString(AppConstants.theme) ?? "";
    notifyListeners();
  }
}