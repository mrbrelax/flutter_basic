import 'package:flutter/material.dart';
import 'package:tabbar/group.dart';
import 'package:tabbar/message.dart';
import 'package:tabbar/profile.dart';
import 'package:tabbar/status.dart';

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

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String title = "TabBar";

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        bottom: _buildTabBar(),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          MessagePage(),
          Status(),
          ProfilesPage(),
          GroupPage(),
        ],
      ),
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      controller: _tabController,
      tabs: <Widget>[
        Tab(
          icon: Icon(Icons.messenger),
        ),
        Tab(
          icon: Icon(Icons.cached),
        ),
        Tab(
          icon: Icon(Icons.person),
        ),
        Tab(
          icon: Icon(Icons.group),
        ),
      ],
    );
  }
}
