import 'package:flutter/material.dart';
import 'package:gesturedetector/images.dart';

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
  @override
  Widget build(BuildContext context) {
    String title = "GestureDetector";
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: GestureDetector(
          // onPanEnd: (e) => print(e),
          // onTapUp: (e) => print(e),
          // onTapDown: (e) => print(e),
          // onTapCancel: () => print("Tap Cancel"),
          // onTap: () => print("On Tap"),
          // onHorizontalDragUpdate: (e) => print(e),
          // onHorizontalDragEnd: (e) => print(e),
          // onHorizontalDragStart: (e) => print(e),
          // onHorizontalDragDown: (e) => print(e),
          // onHorizontalDragCancel: () => print("Drag Cancel"),
          onDoubleTap: () => print("Double Tap"),
          child: DecoratedBox(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.blue,
              image: DecorationImage(
                image: AssetImage(bri),
              ),
            ),
            child: Center(
              widthFactor: 2.0,
              child: Text(
                "Bri",
                style: TextStyle(
                  fontSize: 22.0,
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
