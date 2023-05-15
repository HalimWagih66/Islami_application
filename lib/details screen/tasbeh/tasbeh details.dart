import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../layout screen/provider/settings_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class TasbehDetails extends StatefulWidget {
  static const routeName = "TasbehDetails";
  int counter = 0;
  @override
  State<TasbehDetails> createState() => _TasbehDetailsState();
}

class _TasbehDetailsState extends State<TasbehDetails> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<SettingsProvider>(context);
    String text_tasbeh = ModalRoute.of(context)?.settings.arguments as String;
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
          title: Text(AppLocalizations.of(context)!.tasbeh),
        ),
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 50,
                ),
                Align(
                  heightFactor: 0.4,
                    widthFactor: 0.9,
                    child: Image(image: AssetImage("assets/images/details_tasbeh/head of seb7a.png"))),
                Image(image: AssetImage("assets/images/details_tasbeh/body of seb7a.png"),),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                    child: Text("عدد التسبيحات",style: Theme.of(context).textTheme.bodyText1,)),
                TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Theme.of(context).primaryColor,
                    padding: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                  onPressed: (){
                    widget.counter++;
                    setState(() {

                    });
                  },
                  child: Text("${widget.counter}",style:Theme.of(context).textTheme.bodyText1),
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Theme.of(context).accentColor,
                    ),
                      padding: EdgeInsets.symmetric(vertical: 7,horizontal: 20),
                      child: Text(text_tasbeh,style:Theme.of(context).textTheme.bodyText1?.copyWith(color: Theme.of(context).primaryColor),textAlign: TextAlign.center,)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
