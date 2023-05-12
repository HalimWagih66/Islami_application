import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_application/models/models.hadeth/hadeth.dart';

import 'hadeth_name.dart';

class HadethTap extends StatefulWidget {
  @override
  State<HadethTap> createState() => _HadethTapState();
}

class _HadethTapState extends State<HadethTap> {
  List<Hadeth> list_hadeth = [];

  @override
  Widget build(BuildContext context) {
    if(list_hadeth.isEmpty){
      reaFile();
    }
    return Column(
      children: [
        Expanded(
          flex: 1,
            child: Image(
              image: AssetImage("assets/images/layout screen/hadeth_tap/logo_header_hadeth_tap.png"),
            ),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Theme.of(context).accentColor,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 10.0),
          child: Text("Sura Name",style: Theme.of(context).textTheme.headline5),
        ),
        Container(
          height: 1,
          width: double.infinity,
          color: Theme.of(context).accentColor,
        ),
        Expanded(
          flex: 3,
            child: list_hadeth.isEmpty?Center(
              child: CircularProgressIndicator(),
            ):  ListView.separated(itemBuilder: (context,index)=>HadethName(hadeth: list_hadeth[index]),
                separatorBuilder: (context,index)=>Container(
                  height: 1,
                  width: double.infinity,
                  color: Theme.of(context).accentColor,
                ),
                itemCount: list_hadeth.length,
            ),
        ),
      ],
    );
  }

  void reaFile()async{
    String chapterContent = await rootBundle.loadString("assets/images/files/hadeth/ahadeth.txt");
    List<String>separated_hadith = chapterContent.split("#");
    for(int i = 0 ;i < separated_hadith.length;i++){
      List<String>lines = separated_hadith[i].trim().split('\n');
      String title = lines[0];
      lines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title,content_hadeth: lines);
      list_hadeth.add(hadeth);
    }
    setState(() {

    });
  }
}
