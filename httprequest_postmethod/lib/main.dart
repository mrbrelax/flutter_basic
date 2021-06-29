import 'package:flutter/material.dart';
import 'package:httprequest_postmethod/home.dart';

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
        primaryColor: Colors.green,
        primaryColorLight: Colors.lightGreen,
        accentColor: Colors.greenAccent,
      ),
    );
  }
}
