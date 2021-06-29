import 'package:flutter/material.dart';

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
        primaryColorLight: Colors.lightBlue,
        accentColor: Colors.blueAccent,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "RangeSlider";
  double _lowValue = 10.0;
  double _highValue = 50.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    _lowValue.toString(),
                    style: TextStyle(fontSize: 32.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    _highValue.toString(),
                    style: TextStyle(fontSize: 32.0),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: RangeSlider(
                min: 0.0,
                max: 100.0,
                divisions: 10,
                labels: RangeLabels(
                  _lowValue.toString(),
                  _highValue.toString(),
                ),
                inactiveColor: Color(0xFF9E9E9E),
                activeColor: Color(0xFF2196F3),
                values: RangeValues(_lowValue, _highValue),
                onChanged: (_range) {
                  setState(() {
                    _lowValue = _range.start;
                    _highValue = _range.end;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
