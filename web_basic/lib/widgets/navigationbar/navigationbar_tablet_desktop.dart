import 'package:flutter/material.dart';
import 'package:web_basic/widgets/navigationbar/navbar_item.dart';
import 'package:web_basic/widgets/navigationbar/navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              NavBarItem(title: 'Episode'),
              SizedBox(width: 60),
              NavBarItem(title: 'About'),
            ],
          ),
        ],
      ),
    );
  }
}
