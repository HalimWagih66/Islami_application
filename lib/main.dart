import 'package:flutter/material.dart';
import 'package:islami_application/splash%20screen/splash%20screen.dart';

void main() {
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SplashScreen.routeName :(context)=>SplashScreen(),
      },
      initialRoute: SplashScreen.routeName,
    );
  }
}