import 'package:flutter/material.dart';
import 'package:speeddial/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.lightBlue,
        accentColor: Colors.blueAccent,
      ),
    );
  }
}
