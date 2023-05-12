import 'package:flutter/material.dart';
import 'package:islami_application/splash%20screen/splash%20screen.dart';
import 'package:islami_application/style/My_theme_data.dart';

import 'details screen/hadeth/details hadeth.dart';
import 'details screen/quran/details quran.dart';
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
        DetailsSura.routeName:(context)=>DetailsSura(),
        DetailsHadeth.routeName:(context)=>DetailsHadeth(),
        SplashScreen.routeName :(context)=>SplashScreen(),
        LayoutScreen.routeName:(context)=>LayoutScreen(),
      },
      initialRoute: SplashScreen.routeName,
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }

}