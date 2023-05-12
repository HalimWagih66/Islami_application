import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_application/splash%20screen/splash%20screen.dart';
import 'package:islami_application/style/My_theme_data.dart';

import 'details screen/hadeth/details hadeth.dart';
import 'details screen/quran/details quran.dart';
import 'layout screen/layout screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
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
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('ar'), // Arabic
      ],
      locale: Locale("ar"),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.dark,
    );
  }

}