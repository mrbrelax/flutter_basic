import 'package:bottomnavigationbar/addfile.dart';
import 'package:bottomnavigationbar/home.dart';
import 'package:bottomnavigationbar/profile.dart';
import 'package:bottomnavigationbar/search.dart';
import 'package:bottomnavigationbar/shop.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNav(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        primaryColorLight: Colors.lightBlue,
      ),
    );
  }
}

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedTabIndex = 0;
  void _onNavBarTapped(int index) {
    setState(() {
      _selectedTabIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _listPage = <Widget>[
      HomePage(),
      SearchPage(),
      AddFile(),
      ShopPage(),
      ProfilePage(),
    ];

    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'Home',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.add_box),
        label: '',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.shopping_bag),
        label: 'Shop',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'Profiles',
      ),
    ];

    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavBar"),
        centerTitle: true,
      ),
      body: _listPage[_selectedTabIndex],
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
