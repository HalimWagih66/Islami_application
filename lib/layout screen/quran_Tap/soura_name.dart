import 'package:flutter/material.dart';

class SouraName extends StatelessWidget {
  String sour_name;

  SouraName({required this.sour_name});

  @override
  Widget build(BuildContext context) {
    return Text(
      sour_name,
      style: TextStyle(color: Color(0xff242424), fontSize: 25),
      textAlign: TextAlign.center,
    );
  }
}
