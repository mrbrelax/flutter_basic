import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  String title = "SpeedDial";
  bool _visible = true;

  void setDialVisible(bool value) {
    setState(() {
      _visible = value;
    });
  }

  SpeedDial _speedDial() {
    return SpeedDial(
      // child: Icon(Icons.add),
      animatedIcon: AnimatedIcons.menu_close,
      animatedIconTheme: IconThemeData(size: 24.0),
      onOpen: () {},
      onClose: () {},
      curve: Curves.easeInBack,
      visible: _visible,
      children: [
        SpeedDialChild(
          onTap: () {},
          backgroundColor: Colors.red,
          child: Icon(Icons.home),
          label: 'Home',
          labelBackgroundColor: Colors.red,
          labelStyle: TextStyle(color: Colors.white),
        ),
        SpeedDialChild(
          onTap: () {},
          backgroundColor: Colors.green,
          child: Icon(Icons.category),
          label: 'Category',
          labelBackgroundColor: Colors.green,
          labelStyle: TextStyle(color: Colors.white),
        ),
        SpeedDialChild(
          onTap: () {},
          backgroundColor: Colors.orange,
          child: Icon(Icons.search),
          label: 'Search',
          labelBackgroundColor: Colors.orange,
          labelStyle: TextStyle(color: Colors.white),
        ),
        SpeedDialChild(
          onTap: () {},
          backgroundColor: Color(0xFF1B1F32),
          child: Icon(Icons.shopping_cart),
          label: 'Cart',
          labelBackgroundColor: Color(0xFF1B1F32),
          labelStyle: TextStyle(color: Colors.white),
        ),
        SpeedDialChild(
          onTap: () {},
          backgroundColor: Color(0xFFFBE0E6),
          child: Icon(Icons.person, color: Color(0xFF1B1F32)),
          label: 'Profile',
          labelBackgroundColor: Color(0xFFFBE0E6),
          labelStyle: TextStyle(color: Color(0xFF1B1F32)),
          // You can use also label Widget for Customize
          // labelWidget: Container(
          //   color: Color(0xFFFBE0E6),
          //   padding: EdgeInsets.all(8.0),
          //   margin: EdgeInsets.only(right: 24.0),
          //   child: Text('Profile'),
          // ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true),
      body: Center(
        child: Text(
          "SpeedDial",
          style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: _speedDial(),
    );
  }
}
