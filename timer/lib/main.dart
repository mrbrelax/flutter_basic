import 'dart:async';

import 'package:flutter/material.dart';

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

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String title = "Timer";
    bool isBlack = true;
    bool isStop = true;
    int counter = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              counter.toString(),
              style: TextStyle(
                // ignore: dead_code
                color: (isBlack) ? Colors.black : Colors.red,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Timer(Duration(seconds: 5), () {
                  setState(() {
                    isBlack = !isBlack;
                  });
                });
              },
              child: Text("Ubah warna 5 detik kemudian"),
            ),
            ElevatedButton(
              onPressed: () {
                Timer.run(() {
                  setState(() {
                    isBlack = !isBlack;
                  });
                });
              },
              child: Text("Ubah warna secara langsung"),
            ),
            ElevatedButton(
              onPressed: () {
                isStop = false;
                counter = 0;
                Timer.periodic(Duration(seconds: 1), (timer) {
                  if(isStop) timer.cancel();
                  setState(() {
                    counter++;
                  });
                });
              },
              child: Text("Start Timer"),
            ),
            ElevatedButton(
              onPressed: () {
                isStop = true;
              },
              child: Text("Stop Timer"),
            ),
          ],
        ),
      ),
    );
  }
}
