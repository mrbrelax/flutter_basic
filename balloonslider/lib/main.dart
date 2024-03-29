import 'package:flutter/material.dart';
import 'package:flutter_balloon_slider/flutter_balloon_slider.dart';

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
        primaryColor: Color(0xFFC41A3B),
        primaryColorLight: Color(0xFFFBE0E6),
        accentColor: Color(0xFF1B1F32),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "BalloonSlider";
  ValueNotifier<double> _sliderVal1 = ValueNotifier<double>(0.0);
  ValueNotifier<double> _sliderVal2 = ValueNotifier<double>(0.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SizedBox.expand(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _balloonSlider(
              color: Color(0xFFC41A3B),
              showRope: true,
              sliderValue: _sliderVal1,
            ),
            _balloonSlider(
              color: Color(0xFFC41A3B),
              showRope: false,
              sliderValue: _sliderVal2,
            ),
          ],
        ),
      ),
    );
  }

  Widget _balloonSlider(
      {ValueNotifier<double>? sliderValue,
      required Color color,
      required bool showRope}) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: 260.0,
          height: 68.0,
          child: BalloonSlider(
            value: sliderValue!.value,
            onChanged: (_val) => sliderValue.value = _val,
            showRope: showRope,
            ropeLength: 64.0,
            color: color,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: ValueListenableBuilder<double>(
            valueListenable: sliderValue,
            builder: (context, _value, _child) {
              int _progress = (_value * 100).round();
              return Text(
                "$_progress",
                style: TextStyle(
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                  color: color,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
