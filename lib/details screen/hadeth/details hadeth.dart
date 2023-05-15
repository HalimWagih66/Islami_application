import 'package:flutter/material.dart';
import 'package:islami_application/details%20screen/hadeth/text_style_hadeth.dart';
import 'package:provider/provider.dart';

import '../../layout screen/provider/settings_provider.dart';
import '../../models/models.hadeth/hadeth.dart';

class DetailsHadeth extends StatelessWidget {
  static const routeName = "DetailsHadeth";
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    var arg = ModalRoute.of(context)?.settings.arguments as Hadeth;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(provider.getMainBackground()),
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
