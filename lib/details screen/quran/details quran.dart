import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/details%20screen/quran/text_aya.dart';

import '../../models/models.quran/details sura arguments.dart';
import '../../style/My_theme_data.dart';

class DetailsSura extends StatefulWidget {
  static const routeName = "DetailsSura";
  @override
  State<DetailsSura> createState() => _DetailsSuraState();
}

class _DetailsSuraState extends State<DetailsSura> {
  List<String> ayat = [];

  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as DetailsSuraArg;
    if(ayat.isEmpty){
      readFile(arg.index);
    }
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              MyThemeData.themeMode == ThemeMode.dark?"assets/images/layout screen/background_main/dark/background_layout_screen_dark.png":"assets/images/layout screen/background_main/light/background_layout_screen_light.png"),
          fit: BoxFit.fill,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: Icon(
                Icons.arrow_back_ios
            ),
          ),
          title: Text(arg.sura_name),
        ),
        body: Card(
          margin: EdgeInsets.all(20),
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text_Aya(aya: "أَعُوذُ بِاللَّهِ مِنَ الشَّيطَانِ الرَّجِيمِ",),
                Text_Aya(aya: "بِسْمِ اللَّـهِ الرَّحْمَـٰنِ الرَّحِيمِِ",),
                ayat.isEmpty?Center(child: CircularProgressIndicator()):Expanded(
                  child: ListView.separated(
                      itemBuilder: (context, index) => Text_Aya(aya: ayat[index]),
                      separatorBuilder: (context, index) => Container(
                    width: double.infinity,
                    color: Theme.of(context).accentColor,
                    height: 1,
                  ), itemCount: ayat.length
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  void readFile(int chapterIndex)async{
    String chapter_content = await rootBundle.loadString("assets/images/files/quran/${chapterIndex+1}.txt");
    ayat = chapter_content.split('\n');
    setState(() {});
  }
}
