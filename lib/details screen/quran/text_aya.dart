import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Text_Aya extends StatelessWidget {
  String aya;
  Text_Aya({required this.aya});
  @override
  Widget build(BuildContext context) {
    return Text(
      aya,
      style: Theme.of(context).textTheme.bodyText2,
      textAlign: TextAlign.center,
    );
  }
}
