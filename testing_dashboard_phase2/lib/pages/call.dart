import 'package:flutter/material.dart';

class CallPage extends StatefulWidget {
  const CallPage({super.key});

  @override
  State<CallPage> createState() => _CallPageState();
}

class _CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      // ignore: avoid_unnecessary_containers
      child: Container(
        child: const Text("Call Page"),
      ),
    );
  }
}
