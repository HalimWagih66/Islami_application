import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../layout screen/layout screen.dart';
import '../layout screen/provider/settings_provider.dart';


class SplashScreen extends StatelessWidget {
  static const routeName = "SplashScreen";

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, LayoutScreen.routeName);
    });
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(provider.themeMode == ThemeMode.dark
                ? "assets/images/splash screen/dark/background_splash_screen_dark.png"
                : "assets/images/splash screen/light/background_splash_screen_light.png"),
            fit: BoxFit.fill),
      ),
    );
  }
}
