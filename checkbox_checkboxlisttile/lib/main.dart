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
        primaryColor: Colors.green,
        accentColor: Colors.greenAccent,
        primaryColorLight: Colors.lightGreen,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "CheckBox & CheckBoxListTile";
  bool _checkBox = false;
  bool _checkBoxList = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Checkbox(
                  value: _checkBox,
                  onChanged: (val) {
                    setState(() {
                      _checkBox = !_checkBox;
                    });
                  },
                ),
                Text(
                  'I\'m true now',
                  style: TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            CheckboxListTile(
              controlAffinity: ListTileControlAffinity.leading,
              value: _checkBoxList,
              title: Text('I\'m true now'),
              onChanged: (val) {
                setState(() {
                  _checkBoxList = !_checkBoxList;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
