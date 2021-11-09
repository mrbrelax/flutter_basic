import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_basic/views/home/home_content_desktop.dart';
import 'package:web_basic/views/home/home_content_mobile.dart';
import 'package:web_basic/widgets/centered_view/centered_view.dart';
import 'package:web_basic/widgets/navbar_drawer/navbar_drawer.dart';
import 'package:web_basic/widgets/navigationbar/navigationbar.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? NavBarDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: [
              NavigationBar(),
              Expanded(
                child: ScreenTypeLayout(
                  mobile: HomeContentMobile(),
                  desktop: HomeContentDesktop(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
