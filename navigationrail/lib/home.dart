import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "NavigationRail";
  int _selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Row(
        children: [
          NavigationRail(
            leading: FlutterLogo(),
            trailing: IconButton(
              icon: Icon(Icons.lock),
              onPressed: () {},
            ),
            elevation: 10.0,
            backgroundColor: Colors.blue,
            selectedIconTheme: IconThemeData(color: Colors.white),
            unselectedIconTheme: IconThemeData(
              color: Color(0xFF1B1F32),
            ),
            selectedLabelTextStyle: TextStyle(color: Colors.white),
            unselectedLabelTextStyle: TextStyle(
              color: Color(0xFF1B1F32),
            ),
            onDestinationSelected: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            // groupAlignment: 0.0, // by default
            labelType: NavigationRailLabelType.selected, // by default
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                selectedIcon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.category),
                selectedIcon: Icon(Icons.category),
                label: Text('Category'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.search),
                selectedIcon: Icon(Icons.search),
                label: Text('Search'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.shopping_cart),
                label: Text('Cart'),
                selectedIcon: Icon(Icons.add_shopping_cart),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person),
                label: Text('Profile'),
              ),
            ],
            selectedIndex: _selectedIndex,
          ),
          VerticalDivider(
            width: 2.0,
            thickness: 2.0,
            color: Colors.blue,
          ),
          Expanded(
            child: Center(
              child: Text(
                'Page ${_selectedIndex + 1}',
                style: TextStyle(fontSize: 42.0),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
