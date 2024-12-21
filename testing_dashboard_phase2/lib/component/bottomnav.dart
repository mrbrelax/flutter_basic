import 'package:flutter/material.dart';
import 'package:testing_dashboard_phase2/pages/call.dart';
import 'package:testing_dashboard_phase2/pages/status.dart';
import 'package:testing_dashboard_phase2/pages/group.dart';
import 'package:testing_dashboard_phase2/pages/message.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
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
    // ignore: no_leading_underscores_for_local_identifiers
    final _listPage = <Widget>[
      const MessagePage(),
      const GroupPage(),
      const StatusPage(),
      const CallPage(),
    ];

    // ignore: no_leading_underscores_for_local_identifiers
    final _bottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: Image.asset(
          _selectedTabIndex == 0
              ? "assets/images/message-blue.png"
              : "assets/images/message.png",
          width: 30,
          height: 30,
        ),
        label: 'Chat',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.group),
        label: 'Group',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.refresh),
        label: 'Status',
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.call),
        label: 'Call',
      ),
    ];

    // ignore: no_leading_underscores_for_local_identifiers
    final _bottomNavBar = BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.black,
      onTap: _onNavBarTapped,
    );
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              "assets/images/RelaxChatting_Logo.png",
              width: 55,
              height: 55,
            ),
            Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
        ),
        leading: Builder(
          builder: (context) => Stack(
            alignment: Alignment.centerRight,
            children: [
              Image.asset("assets/images/drawer-header.png"),
              Positioned(
                right: 8.0,
                child: IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
      drawer: Container(
        child: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                accountName: Text("Hello"),
                accountEmail: Text("mrbrelax56@gmail.com"),
              ),
              ListTile(
                leading: const Icon(Icons.payments_rounded, color: Colors.black),
                title: const Text(
                  "RelPay",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text(
                  "Relax Payment",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                onTap: () {},
              ),
              ListTile(
                leading: const Icon(Icons.video_library, color: Colors.black),
                title: const Text(
                  "RelMovie",
                  style: TextStyle(color: Colors.black),
                ),
                subtitle: const Text(
                  "Relax Movie",
                  style: TextStyle(color: Colors.black, fontSize: 10),
                ),
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      body: _listPage[_selectedTabIndex],
      bottomNavigationBar: _bottomNavBar,
    );
  }
}
