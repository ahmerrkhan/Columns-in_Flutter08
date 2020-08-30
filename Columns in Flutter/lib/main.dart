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
          title: Text("Columns in Flutter "),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlatButton(
                onPressed: () {
                  print("Flat Button 1");
                },
                color: Colors.blue,
                child: Text("Flat 1")),
            FlatButton(
                onPressed: () {
                  print("Flat Button 2");
                },
                color: Colors.green,
                child: Text("Flat 2")),
            FlatButton(
                onPressed: () {
                  print("Flat Button 3");
                },
                color: Colors.purple,
                child: Text("Flat 3")),
          ],
        ),
      ),
    );
  }
}
