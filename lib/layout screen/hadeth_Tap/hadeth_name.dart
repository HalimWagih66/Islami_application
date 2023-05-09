import 'package:flutter/material.dart';
import 'package:islami_application/models/models.hadeth/hadeth.dart';

class HadethName extends StatelessWidget {
  Hadeth hadeth;

  HadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return Text(
      hadeth.title,
      style: TextStyle(color: Color(0xff242424), fontSize: 25),
      textAlign: TextAlign.center,
    );
  }
}
