import 'package:flutter/material.dart';

// entry point of execition
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

// data types
  // int days = 12;
  // double seconds = 12.4;
  // String name = "Nidhant";
  // bool enabled = false;
  // num temp = 23.3;

  // var current = "tus" + seconds;
  // const char = "tus";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Material(
          child: Center(
            child: Container(
              child: Text("welcome to 30 day flutter"),
            ),
          ),
        ));
  }
}
