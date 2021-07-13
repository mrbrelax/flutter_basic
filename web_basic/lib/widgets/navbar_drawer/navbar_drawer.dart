import 'package:flutter/material.dart';
import 'package:web_basic/widgets/navbar_drawer/drawer_item.dart';
import 'package:web_basic/widgets/navbar_drawer/navbar_drawer_header.dart';

class NavBarDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          )
        ],
      ),
      child: Column(
        children: [
          NavBarDrawerHeader(),
          DrawerItem('Episode', Icons.videocam),
          DrawerItem('About', Icons.help),
        ],
      ),
    );
  }
}
