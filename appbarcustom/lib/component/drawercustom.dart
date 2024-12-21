import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Colors.blue),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Image.asset("assets/images/RelaxChatting_Logo.png",
                  width: 30, height: 30),
            ),
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _createDrawerItem(
                  icon: Icons.chat_bubble,
                  text: 'Chat',
                  subtitle: '2 Contact Person',
                  trailing: Icons.add,
                  onTap: () {},
                ),
                _createDrawerItem(
                  icon: Icons.group,
                  text: 'Group',
                  subtitle: 'Keluarga Cemara\nTeam Creative',
                  trailing: Icons.add,
                  onTap: () {},
                ),
                _createDrawerItem(
                  icon: Icons.call,
                  text: 'Call',
                  trailing: Icons.add,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _createDrawerItem(
      {required IconData icon,
      required String text,
      String? subtitle,
      IconData? trailing,
      GestureTapCallback? onTap}) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        text,
        style: const TextStyle(color: Colors.white),
      ),
      subtitle: subtitle != null
          ? Text(subtitle, style: const TextStyle(color: Colors.white70))
          : null,
      trailing: trailing != null ? Icon(trailing, color: Colors.white) : null,
      onTap: onTap,
    );
  }
}
