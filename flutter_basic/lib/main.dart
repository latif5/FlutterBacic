import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> listWidgets = [];
  int counter = 0;
  _MyAppState(){
    for(int i=0; i <= 10;i++){
      listWidgets.add(Text("List ke ${i.toString()}", style: TextStyle(fontSize: 30),));
      counter++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("List View")),
        body: Container(
          child: ListView(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  RaisedButton(child: Text("+ Tambah data"),onPressed: (){
                      setState(() {
                        listWidgets.add(Text("List ke ${counter.toString()}", style: TextStyle(fontSize: 30),));
                        counter++;
                      });
                  }),
                  RaisedButton(child: Text("- Hapus data"),onPressed: (){
                      setState(() {
                        listWidgets.removeLast();
                        counter--;
                      });
                  })
                ],
              ),
              
              Column(children: listWidgets),
            ],
          ),
          
        ),
      ),
    );
  }
}
