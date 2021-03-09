import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Expanded";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 75.0,
              width: 300.0,
              color: Colors.blue,
            ),
            SizedBox(height: 16.0),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.green,
              ),
            ),
            SizedBox(height: 16.0),
            Expanded(
              flex: 2,
              child: Container(
                color: Color(0xFF1B1F32),
              ),
            ),
            SizedBox(height: 16.0),
            Container(
              color: Colors.yellow,
              height: 100.0,
              width: 200.0,
            ),
          ],
        ),
      ),
    );
  }
}
