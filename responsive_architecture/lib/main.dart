import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_architecture/views/home_view.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) {
      return MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.lightBlue,
        accentColor: Colors.blueAccent,
      ),
      home: HomeView(),
      builder: DevicePreview.appBuilder,
    );
  }
}
