import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:custom_window_title/components/window_button/window_button.dart';
import 'package:flutter/material.dart';

var backgroundStartColor = Color(0xFFC282828);
var backgroundEndColor = Color(0xFFC62828);

class RightSide extends StatelessWidget {
  const RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              backgroundStartColor,
              backgroundEndColor,
            ],
            stops: [0.0, 1.0],
          ),
        ),
        child: Column(
          children: [
            WindowTitleBarBox(
              child: Row(
                children: [
                  Expanded(
                    child: MoveWindow(),
                  ),
                  WindowButtons(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
