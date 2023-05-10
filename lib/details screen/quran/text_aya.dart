import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
