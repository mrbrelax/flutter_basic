import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerstatemanagement/applicationcolor.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<ApplicationColor>(
        create: (context) => ApplicationColor(),
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Consumer<ApplicationColor>(
              builder: (context, value, child) => Text(
                "Provider Statemanagement",
                style: TextStyle(color: value.color),
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, value, child) => AnimatedContainer(
                    margin: const EdgeInsets.only(bottom: 5),
                    width: 100,
                    height: 100,
                    color: value.color,
                    duration: const Duration(seconds: 1),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text('amber'),
                    Consumer<ApplicationColor>(
                      builder: (context, value, child) => Switch(
                        value: value.isLightBlue,
                        onChanged: (newValue) {
                          value.isLightBlue = newValue;
                        },
                      ),
                    ),
                    const Text('blue'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
