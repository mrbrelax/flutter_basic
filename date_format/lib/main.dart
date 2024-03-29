import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Date Format'), centerTitle: true),
        body: Center(
          child: Text(
            DateFormat.yMMMEd().add_Hms().format(DateTime.now()),
          ),
        ),
      ),
    );
  }
}
