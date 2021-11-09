import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Switch Theme";
  bool _switchValue = false;
  ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    accentColor: Colors.blueAccent,
  );
  ThemeData _lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.green,
    accentColor: Colors.greenAccent,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switchValue ? _darkTheme : _lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Switch',
                style: TextStyle(fontSize: 40.0),
              ),
              Switch(
                value: _switchValue,
                onChanged: (_newValue) {
                  setState(() {
                    _switchValue = _newValue;
                  });
                },
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.check),
          onPressed: () {},
        ),
      ),
    );
  }
}
