import 'package:flutter/material.dart';
import 'package:islami_application/details%20screen/hadeth/text_style_hadeth.dart';

import '../../models/models.hadeth/hadeth.dart';
import '../../style/My_theme_data.dart';

class DetailsHadeth extends StatelessWidget {
  static const routeName = "DetailsHadeth";
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
          title: Text(arg.title),
        ),
        body: Card(
            margin: EdgeInsets.all(20),
            shape: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: EdgeInsets.all(13),
                child: ListView.builder(itemBuilder: (context, index) => Text_Style_Hadeth(content: arg.content_hadeth[index]),itemCount: arg.content_hadeth.length)),
          ),
      ),
    );
  }
}
