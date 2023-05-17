import 'package:flutter/material.dart';
import 'package:islami_application/layout%20screen/provider/settings_provider.dart';
import 'package:islami_application/layout%20screen/settings/theme_bottom_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
import 'language_bottom_sheet.dart';

class Settings_Tap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 30,horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(AppLocalizations.of(context)!.theme,style: Theme.of(context).textTheme.headline5),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: (){
              showThemeBottomSheet(context);
            },
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 1,style: BorderStyle.solid,color: Theme.of(context).accentColor),
                  borderRadius: BorderRadius.circular(13) ,
                    color: Theme.of(context).cardColor
                ),
                padding: EdgeInsets.all(12),
                child: Text(
                  provider.isDarkEnabled()?AppLocalizations.of(context)!.dark:AppLocalizations.of(context)!.light,style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(AppLocalizations.of(context)!.language,style: Theme.of(context).textTheme.headline5),
          SizedBox(
            height: 12,
          ),
          InkWell(
            onTap: (){
              showLanguageBottomSheet(context);
            },
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1,style: BorderStyle.solid,color: Theme.of(context).accentColor),
                  borderRadius: BorderRadius.circular(13),
                color: Theme.of(context).cardColor
              ),
              padding: EdgeInsets.all(12),
              child: Text(
                provider.isLanguageEnglish()?"English":"العربيه",style: Theme.of(context).textTheme.bodyText2
              ),
            ),
          ),
        ],
      ),
    );
  }
  void showThemeBottomSheet(BuildContext context){
    showModalBottomSheet(context: context,
        builder: (context)=>ThemeBottomSheet()
    );
  }
  void showLanguageBottomSheet(BuildContext context){
    showModalBottomSheet(context: context,
      builder: (context)=>LanguageBottomSheet(),
    );
  }
}
