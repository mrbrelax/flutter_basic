import 'package:flutter/material.dart';
import 'package:responsive_architecture/enums/device_screen_type.dart';

class SizingInformation {
  late final Orientation orientation;
  late final DeviceScreenType deviceScreenType;
  late final Size screenSize;
  late final Size localWidgetSize;

  SizingInformation({
    required this.orientation,
    required this.deviceScreenType,
    required this.screenSize,
    required this.localWidgetSize,
  });

  @override
  String toString() {
    return 'Orentation:$orientation DeviceType:$deviceScreenType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}
