import 'package:flutter/material.dart';

class MyThemeData {
  static const Color lightPrimaryColor = Color(0xffB7935F);
  static const Color darkPrimaryColor = Color(0xff141A2E);
  static const Color lightMainTextColor = Color(0xFF242424);
  static const Color darkMainTextColor = Color(0xFFF8F8F8);
  static const Color darkAccentColor = Color(0xFFFACC1D);
  static const Color lightAccentColor = Color(0xFFFACC1D);
  static var lightTheme = ThemeData(
      progressIndicatorTheme:
          ProgressIndicatorThemeData(color: lightPrimaryColor),
      primaryColor: lightPrimaryColor,
      cardColor: Colors.white,
      accentColor: lightPrimaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: lightMainTextColor,
        ),
        color: Colors.transparent,
        titleTextStyle: TextStyle(
          color: lightMainTextColor,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
        //ex.screen title
        headline3: TextStyle(color: lightMainTextColor, fontSize: 32),
        headline5: TextStyle(
            //ex.sub headers
            color: lightMainTextColor,
            fontSize: 24),
        bodyText1: TextStyle(color: lightMainTextColor, fontSize: 24),
        bodyText2: TextStyle(color: lightMainTextColor, fontSize: 20),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12), topLeft: Radius.circular(12))),
      )
  );

  static var darkTheme = ThemeData(
      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: darkAccentColor,
      ),
      primaryColor: darkPrimaryColor,
      cardColor: darkPrimaryColor,
      accentColor: darkAccentColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: darkMainTextColor,
        ),
        color: Colors.transparent,
        titleTextStyle: TextStyle(
          color: darkMainTextColor,
          fontSize: 30,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        elevation: 0,
        selectedItemColor: darkAccentColor,
        unselectedItemColor: Colors.white,
      ),
      textTheme: TextTheme(
        //ex.screen title
        headline3: TextStyle(color: darkMainTextColor, fontSize: 32),
        headline5: TextStyle(
            //ex.sub headers
            color: darkMainTextColor,
            fontSize: 24),
        bodyText1: TextStyle(color: darkMainTextColor, fontSize: 24),
        bodyText2: TextStyle(color: darkMainTextColor, fontSize: 20),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: darkPrimaryColor,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(12), topLeft: Radius.circular(12))),
      ));
  static ThemeMode themeMode = ThemeMode.dark;
}
