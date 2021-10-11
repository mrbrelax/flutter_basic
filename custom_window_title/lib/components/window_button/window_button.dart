import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:flutter/material.dart';

var buttonColors = WindowButtonColors(
  iconNormal: Color(0xFFFFFFFF),
  mouseOver: Color(0xFFF6A00C),
  mouseDown: Color(0xFF805306),
  iconMouseOver: Color(0xFFFFFFFF),
  iconMouseDown: Color(0xFFFFFFFF),
);

class WindowButtons extends StatelessWidget {
  const WindowButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MinimizeWindowButton(colors: buttonColors),
        MaximizeWindowButton(colors: buttonColors),
        CloseWindowButton(),
      ],
    );
  }
}
