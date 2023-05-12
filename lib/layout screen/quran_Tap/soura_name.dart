import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../details screen/quran/details quran.dart';
import '../../models/models.quran/details sura arguments.dart';

class SouraName extends StatelessWidget {
  String sour_name;
  int index;
  SouraName({required this.sour_name,required this.index});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(
            context,
            DetailsSura.routeName,
            arguments: DetailsSuraArg(sura_name: sour_name,index: index),
        );
      },
      child: Text(
        sour_name,
        style: Theme.of(context).textTheme.bodyText1,
        textAlign: TextAlign.center,
      ),
    );
  }
}
