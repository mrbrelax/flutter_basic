import 'package:flutter/material.dart';
import 'package:responsive_architecture/widgets/app_drawer/app_drawer.dart';

class AppDrawerTabletPortrait extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(blurRadius: 16, color: Colors.black12),
      ]),
      child: Row(children: AppDrawer.getDrawerOptions()),
    );
  }
}

class AppDrawerTabletLandscape extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(blurRadius: 16, color: Colors.black12),
      ]),
      child: Column(children: AppDrawer.getDrawerOptions()),
    );
  }
}
