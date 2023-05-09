import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/details%20screen/quran/text_aya.dart';

import '../../models/models.quran/details sura arguments.dart';

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
              "assets/images/layout screen/background_home_screen.png"),
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
        body: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: ayat.isEmpty?Center(child: CircularProgressIndicator()):ListView.separated(
              itemBuilder: (context, index) => Text_Aya(aya: ayat[index]),
              separatorBuilder: (context, index) => Container(
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            height: 1,
          ), itemCount: ayat.length
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
