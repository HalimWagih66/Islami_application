import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../details screen/tasbeh/tasbeh details.dart';

class TasbehTap extends StatefulWidget {
  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
  List<String> content_tasbeh = [];
  List<String> reward_tasbeh = [];

  @override
  Widget build(BuildContext context) {
    if (content_tasbeh.isEmpty) {
      readFile();
    }
    return Container(
      child: content_tasbeh.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemBuilder: (context, index) => InkWell(
                onTap: () {
                  Navigator.pushNamed(
                    context,
                    TasbehDetails.routeName,
                    arguments: content_tasbeh[index],
                  );
                },
                child: Card(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Theme.of(context).accentColor,
                        style: BorderStyle.solid,
                        width: 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: ListTile(
                    leading: Icon(
                      Icons.arrow_back_ios,
                      color: Color(0xffE3D6C4),
                    ),
                    title: Text(textDirection:TextDirection.rtl,content_tasbeh[index],
                        style: Theme.of(context).textTheme.bodyText1,
                        ),
                    subtitle: Text(textDirection:TextDirection.rtl,reward_tasbeh[index],
                        style: Theme.of(context).textTheme.bodyText2,
                        ),
                  ),
                ),
              ),
              itemCount: content_tasbeh.length,
            ),
    );
  }

  void readFile() async {
    String chpaterHadeth =
        await rootBundle.loadString("assets/files/tasbeh/tasbeh.txt");
    List<String> lines = chpaterHadeth.split('\n');
    for (int i = 0, z = 0; i < lines.length; i += 2, z++) {
      content_tasbeh.add(lines[i]);
      reward_tasbeh.add(lines[i + 1]);
    }
    setState(() {});
  }
}
