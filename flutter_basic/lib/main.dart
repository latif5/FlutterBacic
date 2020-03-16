import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int number = 0; 
  void addNumber(){
    setState(() {
      ++number;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Statefull Widget Demo"),),
        body: Center(
          child: Container(         
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(number.toString(), style: TextStyle(fontSize: 10 + number.toDouble())),
                RaisedButton(
                  child: Text("+ Add"),
                  onPressed: addNumber,
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}