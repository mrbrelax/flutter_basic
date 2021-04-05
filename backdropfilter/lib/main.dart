import 'dart:ui';

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
        primarySwatch: Colors.green,
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
    String title = "BackdropFilter";
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints.expand(),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://wallpapercave.com/wp/wp1810645.jpg"),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: _infoCard(context, "Salis"),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: _bottomIconButton(
                  IconButton(
                    icon: Icon(Icons.navigate_next, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget _cardEdge(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(15.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: child,
    ),
  );
}

Widget _bottomIconButton(Widget child) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(50.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        height: 50.0,
        width: 50.0,
        decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.3), shape: BoxShape.circle),
        child: child,
      ),
    ),
  );
}

Widget _infoCard(BuildContext context, String title) {
  return _cardEdge(
    Container(
      key: ValueKey<String>(title),
      height: MediaQuery.of(context).size.height / 4,
      width: MediaQuery.of(context).size.width / 1.2,
      color: Colors.white.withOpacity(0.3),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "FSOCIETY",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Evil Corp, Fsociety Our Democracy Has Been Hacked. Your Privacy has been Delete with Mr. Robot.",
              style: TextStyle(fontSize: 18.0, color: Colors.black),
            )
          ],
        ),
      ),
    ),
  );
}
