import 'package:flutter/material.dart';
import 'package:islami_application/splash%20screen/splash%20screen.dart';

import 'layout screen/layout screen.dart';

void main() {
  runApp(MyApplication());
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        SplashScreen.routeName :(context)=>SplashScreen(),
        LayoutScreen.routeName:(context)=>LayoutScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: ThemeData(
          primaryColor: Color(0xffB7935F),
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: AppBarTheme(
            color: Colors.transparent,
            titleTextStyle: TextStyle(
              color: Color(0xff242424),
              fontSize: 30,
              fontWeight: FontWeight.w500,
            ),
            centerTitle: true,
            elevation: 0,
          ),
          bottomNavigationBarTheme: BottomNavigationBarThemeData(
            elevation: 0,
            selectedItemColor: Color(0xff242424),
            unselectedItemColor: Color(0xffFFFFFF),
          )
      ),
    );
  }

}