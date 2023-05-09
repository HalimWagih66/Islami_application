import 'package:flutter/material.dart';
import 'package:islami_application/details%20screen/hadeth/text_style_hadeth.dart';

import '../../models/models.hadeth/hadeth.dart';

class DetailsHadeth extends StatelessWidget {
  static const routeName = "DetailsHadeth";
  @override
  Widget build(BuildContext context) {
    var arg = ModalRoute.of(context)?.settings.arguments as Hadeth;
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
          title: Text(arg.title),
        ),
        body: Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
          ),
          child: ListView.builder(itemBuilder: (context, index) => Text_Style_Hadeth(content: arg.content_hadeth[index]),itemCount: arg.content_hadeth.length),
        ),
      ),
    );
  }
}
