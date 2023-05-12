import 'package:flutter/material.dart';

import '../layout screen/layout screen.dart';
import '../style/My_theme_data.dart';

class SplashScreen extends StatelessWidget{
  static const routeName = "SplashScreen";
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, LayoutScreen.routeName);
    });
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage(
               MyThemeData.themeMode == ThemeMode.dark?"assets/images/splash screen/dark/background_splash_screen_dark.png":"assets/images/splash screen/light/background_splash_screen_light.png"),
           fit: BoxFit.fill
         ),
      ),
    );
  }

}