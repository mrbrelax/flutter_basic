import 'package:flutter/material.dart';
import 'package:switch_and_animatedswitcher_widget/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.lightBlue,
        accentColor: Colors.blueAccent,
      ),
    );
  }
}