import 'package:flutter/material.dart';
import 'package:navigationrail/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.lightBlue,
        accentColor: Colors.blueAccent,
      ),
    );
  }
}
