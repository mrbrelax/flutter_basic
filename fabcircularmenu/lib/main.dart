import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.lightBlue,
        accentColor: Colors.blueAccent,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String title = "FabCircularMenu";
  final GlobalKey<FabCircularMenuState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      floatingActionButton: FabCircularMenu(
        key: _key,
        fabColor: Colors.blue,
        fabOpenColor: Colors.blue,
        fabCloseColor: Color(0xFF1B1F32),
        fabOpenIcon: Icon(Icons.menu, color: Colors.white),
        fabCloseIcon: Icon(Icons.close, color: Colors.white),
        fabSize: 50.0,
        fabElevation: 16.0,
        fabMargin: EdgeInsets.all(16.0),
        alignment: Alignment.bottomRight,
        ringWidth: 125.0,
        ringDiameter: 425.0,
        ringColor: Colors.white,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(seconds: 1),
        onDisplayChange: (_isOpen) {
          print('Menu is ${_isOpen ? 'Open' : 'Close'}');
        },
        children: [
          RawMaterialButton(
            onPressed: () {
              _key.currentState!.close();
            },
            child: Icon(Icons.menu, color: Colors.blue),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
          RawMaterialButton(
            onPressed: () {
              _key.currentState!.close();
            },
            child: Icon(Icons.message, color: Colors.blue),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
          RawMaterialButton(
            onPressed: () {
              _key.currentState!.close();
            },
            child: Icon(Icons.person, color: Colors.blue),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
          RawMaterialButton(
            onPressed: () {
              _key.currentState!.close();
            },
            child: Icon(Icons.search, color: Colors.blue),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
          RawMaterialButton(
            onPressed: () {
              _key.currentState!.close();
            },
            child: Icon(Icons.settings, color: Colors.blue),
            shape: CircleBorder(),
            padding: EdgeInsets.all(16.0),
          ),
        ],
      ),
    );
  }
}
