import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MediaQueryHeight = MediaQuery.of(context).size.height;
    final MediaQueryWidth = MediaQuery.of(context).size.width;
    final myAppBar = AppBar(title: const Text("MediaQuery"));

    final bodyHeight = MediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Scaffold(
      appBar: myAppBar,
      body: Center(
        child: (isLandscape)
            ? Column(
                children: [
                  Container(
                    height: bodyHeight * 0.5,
                    width: MediaQueryWidth,
                    color: Colors.amber,
                  ),
                  SizedBox(
                    height: bodyHeight * 0.5,
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return GridTile(
                          child: Container(
                            color: Color.fromARGB(
                              255,
                              Random().nextInt(156),
                              Random().nextInt(156),
                              Random().nextInt(156),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              )
            : Column(
                children: [
                  Container(
                    height: bodyHeight * 0.3,
                    width: MediaQueryWidth,
                    color: Colors.amber,
                  ),
                  Container(
                    height: bodyHeight * 0.7,
                    color: Colors.red,
                    child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return const ListTile(
                          leading: CircleAvatar(),
                          title: Text("Hallo Semua .."),
                        );
                      },
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
