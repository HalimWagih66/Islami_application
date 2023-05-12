import 'package:flutter/material.dart';
import 'package:islami_application/layout%20screen/quran_Tap/quran_tap.dart';
import 'package:islami_application/layout%20screen/radio_Tap/radio_tap.dart';
import 'package:islami_application/layout%20screen/tasbeh_Tap/tasbeh_Tap.dart';

import '../style/My_theme_data.dart';
import 'hadeth_Tap/hadeth_Tap.dart';

class LayoutScreen extends StatefulWidget{
  static const routeName = "LayoutScreen";

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int selectedItemIndex = 0;
  List<Widget> taps = [
    QuranTap(),
    HadethTap(),
    TasbehTap(),
    RadioTap(),
  ];
  List<String> title = [
    "Quran",
    "Hadeth",
    "Tasbeh",
    "Radio"
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(MyThemeData.themeMode == ThemeMode.dark?"assets/images/layout screen/background_main/dark/background_layout_screen_dark.png":"assets/images/layout screen/background_main/light/background_layout_screen_light.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(title[selectedItemIndex]),
        ),
        body: taps[selectedItemIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedItemIndex,
          onTap: (index){
            selectedItemIndex = index;
            setState(() {

            });
          },
          items: [
            BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,label: "Quran",icon: ImageIcon(AssetImage("assets/images/layout screen/icons BottomNavigationBar/quran.png"),)),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,label: "Hadeth",icon: ImageIcon(AssetImage("assets/images/layout screen/icons BottomNavigationBar/hadeth.png"),)),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,label: "Tasbeh",icon: ImageIcon(AssetImage("assets/images/layout screen/icons BottomNavigationBar/sebha.png"),)),
            BottomNavigationBarItem(backgroundColor: Theme.of(context).primaryColor,label: "Radio",icon: ImageIcon(AssetImage("assets/images/layout screen/icons BottomNavigationBar/radio.png"),)),
          ],
        ),
      ),
    );
  }
}