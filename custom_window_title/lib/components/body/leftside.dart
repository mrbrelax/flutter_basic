import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:custom_window_title/components/body/rightside.dart';
import 'package:flutter/material.dart';

var sidebarColor = Color(0xFFCE2828);

class LeftSide extends StatelessWidget {
  const LeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
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
              child: MoveWindow(),
            ),
          ],
        ),
      ),
    );
  }
}
