import 'package:flutter/material.dart';

import '../layout screen/layout screen.dart';

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
           image: AssetImage("assets/images/splash screen/background_splash_screen.png"),
           fit: BoxFit.fill
         ),
      ),
    );
  }

}