import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_basic/widgets/call_to_actions/call_to_action_mobile.dart';
import 'package:web_basic/widgets/call_to_actions/call_to_action_tablet.dart';

class CallToAction extends StatelessWidget {
  final String title;
  CallToAction(this.title);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title),
      tablet: CallToActionTabletDesktop(title),
    );
  }
}
