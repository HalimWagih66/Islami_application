import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../details screen/quran/details quran.dart';
import '../../models/models.quran/details sura arguments.dart';

class Text_Aya extends StatelessWidget {
  String aya;
  Text_Aya({required this.aya});
  @override
  Widget build(BuildContext context) {
    return Text(
      aya,
      style: TextStyle(color: Color(0xff242424), fontSize: 25),
      textAlign: TextAlign.center,
    );
  }

}
