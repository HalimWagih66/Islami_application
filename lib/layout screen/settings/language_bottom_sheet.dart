import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/settings_provider.dart';

class LanguageBottomSheet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
              onTap: () {
                provider.changeLanguage("en");
              },
              child: provider.isLanguageEnglish()?getSelectedWidget("English",context):getUnSelectedWidget("English",context)
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              provider.changeLanguage("ar");
            },
            child: provider.isLanguageEnglish()?getUnSelectedWidget("العربيه",context):getSelectedWidget("العربيه",context)
          ),
        ],
      ),
    );
  }
  Widget getSelectedWidget(String title,BuildContext context){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: Theme.of(context)
                .textTheme
                .bodyText2
                ?.copyWith(color: Theme.of(context).accentColor)),
        Icon(Icons.check, color: Theme.of(context).accentColor),
      ],
    );
  }
  Widget getUnSelectedWidget(String title,BuildContext context){
    return Text(title,
        style: Theme.of(context).textTheme.bodyText2);
  }
}
