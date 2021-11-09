import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/widgets/drawer_option/drawer_option_mobile.dart';
import 'package:responsive_architecture/widgets/drawer_option/drawer_option_tablet.dart';

class DrawerOption extends StatelessWidget {
  final String title;
  final IconData iconData;
  const DrawerOption({
    Key? key,
    required this.title,
    required this.iconData,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        landscape: DrawerOptionMobileLandscape(iconData: iconData),
        portrait: DrawerOptionMobilePortrait(title: title, iconData: iconData),
      ),
      tablet: OrientationLayout(
        landscape: DrawerOptionMobilePortrait(title: title, iconData: iconData),
        portrait: DrawerOptionTabletPortrait(iconData: iconData, title: title),
      ),
      desktop: OrientationLayout(
        landscape: DrawerOptionMobilePortrait(title: title, iconData: iconData),
        portrait: DrawerOptionTabletPortrait(title: title, iconData: iconData),
      ),
    );
  }
}
