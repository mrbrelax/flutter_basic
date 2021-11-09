import 'package:flutter/material.dart';
import 'package:web_basic/widgets/call_to_actions/call_to_actions.dart';
import 'package:web_basic/widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Join Course'),
          ),
        ),
      ],
    );
  }
}
