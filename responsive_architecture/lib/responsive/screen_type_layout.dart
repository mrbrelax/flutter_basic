import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';
import 'package:responsive_architecture/responsive/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ScreenTypeLayout({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if(sizingInformation.deviceScreenType == DeviceScreenType.Tablet){
          // ignore: unnecessary_null_comparison
          if(tablet != null){
            return tablet;
          }
        }
        if(sizingInformation.deviceScreenType == DeviceScreenType.Desktop){
          // ignore: unnecessary_null_comparison
          if(desktop != null){
            return desktop;
          }
        }
        return mobile;
      },
    );
  }
}
