import 'package:flutter/material.dart';
import 'package:web_basic/widgets/call_to_actions/call_to_actions.dart';
import 'package:web_basic/widgets/course_details/course_details.dart';

class HomeContentMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CourseDetails(),
          SizedBox(height: 100),
          CallToAction('Join Course'),
        ],
      ),
    );
  }
}
