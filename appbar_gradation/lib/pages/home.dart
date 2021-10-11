import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.adb, color: Colors.white),
        title: const Text(
          "AppBar Example",
          style: TextStyle(color: Colors.white),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.exit_to_app)),
        ],
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[Color(0xff0096ff), Color(0xff6610f2)],
              begin: FractionalOffset.topLeft,
              end: FractionalOffset.bottomRight,
            ),
            image: DecorationImage(
              image: AssetImage("assets/img/Global-1-1.png"),
              fit: BoxFit.none,
              repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
