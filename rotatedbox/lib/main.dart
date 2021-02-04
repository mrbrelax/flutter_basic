import 'package:flutter/material.dart';
import 'package:rotatedbox/image.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        primaryColorLight: Colors.lightBlue,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "RotatedBox";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: RotatedBox(
          quarterTurns: 4,
          child: ClipPath(
            child: Image(
              image: AssetImage(fsociety),
              height: 200.0,
              width: 150.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
