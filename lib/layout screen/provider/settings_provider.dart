

import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = "en";
  void changeLanguage(String newLangCode){
    languageCode = newLangCode;
    notifyListeners();
  }
  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    notifyListeners();
  }
  bool isLanguageEnglish(){
    return languageCode == "en"?true:false;
  }
  void enableLightMode() {
    themeMode = ThemeMode.light;
    notifyListeners();
  }
  bool isDarkEnabled(){
    return themeMode == ThemeMode.dark;
  }
  String getMainBackground() {
    return themeMode == ThemeMode.dark
        ? "assets/images/layout screen/background_main/dark/background_layout_screen_dark.png"
        : "assets/images/layout screen/background_main/light/background_layout_screen_light.png";
  }
}
