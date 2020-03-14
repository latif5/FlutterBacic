import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Widget Container")
        ),
        body: Container(
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(20),
          // ),
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(20)
          ),
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(20),
          // padding: EdgeInsets.fromLTRB(15, 20, 35, 40),
          child: Container(
            // padding: EdgeInsets.only(left: 20, top: 50),
            // color: Colors.blueAccent,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: <Color>[
                  Colors.amber,
                  Colors.blueAccent
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight
              )
            ),
          ),
        ),
      ),
    );
  }
}
