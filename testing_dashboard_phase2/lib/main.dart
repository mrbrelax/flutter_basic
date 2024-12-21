import 'package:flutter/material.dart';
import 'package:testing_dashboard_phase2/component/bottomnav.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: BottomNav(),
    );
  }
}