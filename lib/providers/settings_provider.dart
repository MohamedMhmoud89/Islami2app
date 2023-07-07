import 'package:flutter/material.dart';

class SettingProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.dark;
  String languageCode = 'en';

  void changeLanguageCode(String newLanguageCode) {
    languageCode = newLanguageCode;
    notifyListeners();
  }

  //void changeTheme(ThemeMode newMode){
  //themeMode = newMode;
  //notifyListeners();
  //}
  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }

  void enableLightMode() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }

  bool isDarkEnable() {
    return themeMode == ThemeMode.dark;
  }

  bool isLightEnable() {
    return themeMode == ThemeMode.light;
  }

  bool isLngCodeEN() {
    return languageCode == 'en';
  }
}
