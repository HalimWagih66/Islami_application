

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;
  String languageCode = "en";
  late SharedPreferences prefColor;
  late SharedPreferences prefLanguage;
  SettingsProvider(){
    getColorFromSharedPreferences();
    getLanguageFromSharedPreferences();
  }

  getColorFromSharedPreferences()async{
    prefColor = await SharedPreferences.getInstance();
    themeMode = prefColor.getBool('themeIsDark') == true ? ThemeMode.dark:ThemeMode.light;
    notifyListeners();
  }
  getLanguageFromSharedPreferences()async{
    prefLanguage = await SharedPreferences.getInstance();
    languageCode = prefLanguage.getString('language') == "ar"?"ar":"en";
    notifyListeners();
  }
  savedColor(ThemeMode them)async{
    prefColor = await SharedPreferences.getInstance();
    prefColor.setBool("themeIsDark", them == ThemeMode.dark?true:false);
  }
  savedLanguage(String language)async{
    prefLanguage = await SharedPreferences.getInstance();
    prefLanguage.setString("language",language);
  }
  void changeLanguage(String newLangCode){
    languageCode = newLangCode;
    savedLanguage(newLangCode);
    notifyListeners();
  }
  void enableDarkMode() {
    themeMode = ThemeMode.dark;
    savedColor(themeMode);
    notifyListeners();
  }
  bool isLanguageEnglish(){
    return languageCode == "en"?true:false;
  }
  void enableLightMode() {
    themeMode = ThemeMode.light;
    savedColor(themeMode);
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
