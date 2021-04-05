import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "AnimatedSwitcher";
  bool isON = false;

  Widget mySwitch = Container(
    width: 200,
    height: 100,
    decoration: BoxDecoration(
      color: Colors.red,
      border: Border.all(color: Colors.black, width: 3),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedSwitcher(
              duration: Duration(seconds: 1),
              child: mySwitch,
              transitionBuilder: (child, animation) => RotationTransition(
                turns: animation,
                child: child,
              ),
            ),
            Switch(
              activeColor: Colors.green,
              inactiveTrackColor: Colors.red,
              inactiveThumbColor: Colors.red,
              value: isON,
              onChanged: (newValue) {
                isON = newValue;
                setState(() {
                  if (isON)
                    mySwitch = Container(
                      key: ValueKey(1),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                    );
                  // mySwitch = SizedBox(
                  //   width: 200,
                  //   height: 100,
                  //   child: Center(
                  //     child: Text(
                  //       "Switch ON",
                  //       style: TextStyle(
                  //         color: Colors.green,
                  //         fontWeight: FontWeight.w700,
                  //         fontSize: 20,
                  //       ),
                  //     ),
                  //   ),
                  // );
                  else
                    mySwitch = Container(
                      key: ValueKey(2),
                      width: 200,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(
                          color: Colors.black,
                          width: 3,
                        ),
                      ),
                    );
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
