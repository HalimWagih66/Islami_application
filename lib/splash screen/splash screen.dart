import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget{
  static const routeName = "SplashScreen";
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3),);
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage("assets/images/splash screen/background_splash_screen.png"),
           fit: BoxFit.fill
         ),
      ),
    );
  }

}