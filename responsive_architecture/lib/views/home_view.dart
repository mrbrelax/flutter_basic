import 'package:flutter/material.dart';
import 'package:responsive_architecture/responsive/orientation_layout.dart';
import 'package:responsive_architecture/responsive/responsive_builder.dart';
import 'package:responsive_architecture/responsive/screen_type_layout.dart';
import 'package:responsive_architecture/views/home_view_mobile.dart';
import 'package:responsive_architecture/views/home_view_tablet.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        return ScreenTypeLayout(
          mobile: OrientationLayout(
            landscape: HomeMobileLandscape(),
            portrait: HomeMobilePortrait(),
          ),
          tablet: HomeViewTablet(),
          desktop: HomeViewTablet(),
        );
      },
    );
  }
}
