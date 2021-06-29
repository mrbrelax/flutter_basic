import 'package:flutter/material.dart';
import 'package:splashscreen/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
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
  @override
  Widget build(BuildContext context) {
    String title = "SplashScreen";
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Welcome To Page',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
