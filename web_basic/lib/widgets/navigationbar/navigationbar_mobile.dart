import 'package:flutter/material.dart';
import 'package:web_basic/widgets/navigationbar/navbar_logo.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          NavBarLogo(),
        ],
      ),
    );
  }
}
