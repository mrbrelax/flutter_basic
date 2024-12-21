import 'package:flutter/material.dart';
import 'package:testing_dashboard/chat_page.dart';
import 'package:testing_dashboard/component/drawernav.dart';
import 'package:testing_dashboard/group_page.dart';
import 'package:testing_dashboard/status_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          drawer: const DrawerNavPage(),
          appBar: AppBar(
            title: const Text("Testing Dashboard",
                style: TextStyle(color: Colors.white)),
            backgroundColor: Colors.blue,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.message, color: Colors.white)),
                Tab(icon: Icon(Icons.loop, color: Colors.white)),
                Tab(icon: Icon(Icons.group, color: Colors.white)),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              ChatPage(),
              StatusPage(),
              GroupPage(),
            ],
          ),
        ),
      ),
    );
  }
}
