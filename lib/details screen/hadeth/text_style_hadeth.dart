import 'package:flutter/material.dart';

class Text_Style_Hadeth extends StatelessWidget {
  String content;
  Text_Style_Hadeth({required this.content});
  @override
  Widget build(BuildContext context) {
    return Text(
        content,
        textAlign: TextAlign.right,
        style: Theme.of(context).textTheme.bodyText2,
    );
  }
}
