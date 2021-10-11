import 'package:flutter/material.dart';

class DrawerOptionMobilePortrait extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOptionMobilePortrait({
    Key? key,
    required this.title,
    required this.iconData,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 25),
      height: 80.0,
      child: Row(
        children: [
          Icon(iconData, size: 25),
          SizedBox(width: 25),
          Text(title, style: TextStyle(fontSize: 21)),
        ],
      ),
    );
  }
}

class DrawerOptionMobileLandscape extends StatelessWidget {
  final IconData iconData;
  const DrawerOptionMobileLandscape({Key? key, required this.iconData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      alignment: Alignment.center,
      child: Icon(iconData),
    );
  }
}