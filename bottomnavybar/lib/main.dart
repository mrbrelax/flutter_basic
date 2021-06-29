import 'package:bottom_navy_bar/bottom_navy_bar.dart';
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
  String title = "BottomNavyBar";
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavyBar(
        selectedIndex: _currentIndex,
        showElevation: true,
        curve: Curves.easeOutBack,
        items: [
          BottomNavyBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            activeColor: Colors.red,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.category),
            title: Text('Category'),
            activeColor: Colors.purple,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.search),
            title: Text('Search'),
            activeColor: Colors.orange,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.shopping_cart),
            title: Text('Cart'),
            activeColor: Colors.green,
            textAlign: TextAlign.center,
          ),
          BottomNavyBarItem(
            icon: Icon(Icons.person),
            title: Text('Profile'),
            activeColor: Colors.yellow,
            textAlign: TextAlign.center,
          ),
        ],
        onItemSelected: (index) => setState(() {
          _currentIndex = index;
        }),
      ),
    );
  }
}
