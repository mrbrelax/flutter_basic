import 'package:flutter/material.dart';

class DrawerOptionTabletPortrait extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOptionTabletPortrait({
    Key? key,
    required this.title,
    required this.iconData,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152.0,
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(iconData, size: 45),
          Text(title, style: TextStyle(fontSize: 20)),
        ],
      ),
    );
  }
}
