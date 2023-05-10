import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TasbehTap extends StatefulWidget {
  @override
  State<TasbehTap> createState() => _TasbehTapState();
}

class _TasbehTapState extends State<TasbehTap> {
  List<String> content_tasbeh = [];
  List<String> reward_tasbeh = [];

  @override
  Widget build(BuildContext context) {
    if(content_tasbeh.isEmpty){
      readFile();
    }
    return Container(
      child: content_tasbeh.isEmpty ? Center(child: CircularProgressIndicator()):ListView.builder(
          itemBuilder: (context,index)=> Card(
            //shape: Border.all(width: 3,color: Color(0xffE3D6C4)),
            shape: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffE3D6C4),style: BorderStyle.solid,width: 2),
              borderRadius: BorderRadius.circular(20),
            ),
            child: ListTile(
              leading: Icon(
                  Icons.arrow_back_ios,
                  color: Color(0xffE3D6C4),
              ),
              focusColor: Colors.cyan,
              hoverColor: Colors.red,
              title: Text(content_tasbeh[index],textAlign: TextAlign.right),
              subtitle: Text(reward_tasbeh[index],textAlign: TextAlign.right),
            ),
          ),
        itemCount: content_tasbeh.length,
      ),
    );
  }

  void readFile()async{
    String chpaterHadeth = await rootBundle.loadString("assets/images/files/tasbeh/tasbeh.txt");
    List<String>lines = chpaterHadeth.split('\n');
    for(int i = 0 ,z = 0; i < lines.length;i+=2,z++) {
      content_tasbeh.add(lines[i]);
      reward_tasbeh.add(lines[i + 1]);
      print(content_tasbeh[z]);
      print(reward_tasbeh[z]);
    }
    setState(() {

    });
  }
}
