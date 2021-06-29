import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:custom_window_title/components/body/leftside.dart';
import 'package:custom_window_title/components/body/rightside.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  doWhenWindowReady((){
    final win = appWindow;
    final initialSize = Size(600, 450);
    win.minSize = initialSize;
    win.size = initialSize;
    win.title = "Custom Window";
    win.alignment = Alignment.center;
    appWindow.show();
  });
}

var borderColor = Color(0xFF805306);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WindowBorder(
          width: 1,
          color: borderColor,
          child: Row(
            children: [
              LeftSide(),
              RightSide(),
            ],
          ),
        ),
      ),
    );
  }
}
