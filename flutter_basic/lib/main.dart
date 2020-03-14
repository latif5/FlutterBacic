import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title: Text("First Flutter App")),
            body: Center(
                child: Container(
                    color: Color.fromRGBO(20, 30, 40, 100),
                    height: 30,
                    width: 300,
                    alignment: Alignment.center,
                    child: Text("Hello You!",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w800))))));
  }
}
