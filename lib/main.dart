import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:islami_application/splash%20screen/splash%20screen.dart';
import 'package:islami_application/style/My_theme_data.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'details screen/hadeth/details hadeth.dart';
import 'details screen/quran/details quran.dart';
import 'details screen/tasbeh/tasbeh details.dart';
import 'layout screen/layout screen.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'layout screen/provider/settings_provider.dart';
void main() {
  runApp(ChangeNotifierProvider(
    create: (buildContext)=>SettingsProvider(),
      child: MyApplication()));
}
class MyApplication extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        DetailsSura.routeName:(context)=>DetailsSura(),
        DetailsHadeth.routeName:(context)=>DetailsHadeth(),
        SplashScreen.routeName :(context)=>SplashScreen(),
        LayoutScreen.routeName:(context)=>LayoutScreen(),
        TasbehDetails.routeName:(context)=>TasbehDetails()
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
      locale: Locale(provider.languageCode),
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: provider.themeMode,
    );
  }

}