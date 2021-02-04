import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    String title = "GestureRecognizer";
    LongPressGestureRecognizer _longPressRecognizer;

    @override
    // ignore: unused_element
    void initState() {
      super.initState();
      _longPressRecognizer = LongPressGestureRecognizer()..onLongPress = _handlePress;
    }

    @override
    // ignore: unused_element
    void dispose(){
      super.dispose();
      _longPressRecognizer.dispose();
    }
    
    void _handlePress(){
      HapticFeedback.vibrate();
    }
    
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Text.rich(
          TextSpan(
            text: 'Can You',
            style: TextStyle(
              color: Colors.black,
              fontSize: 26.0,
            ),
            children: <InlineSpan>[
              TextSpan(
                text: ' find the',
                style: TextStyle(
                  color: Colors.green,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.wavy,
                ),
                recognizer: _longPressRecognizer,
              ),
              TextSpan(
                text: ' different ?',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
