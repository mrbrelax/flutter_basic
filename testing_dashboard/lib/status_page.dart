import 'package:flutter/material.dart';

class StatusPage extends StatefulWidget {
  const StatusPage({super.key});

  @override
  State<StatusPage> createState() => _StatusPageState();
}

class _StatusPageState extends State<StatusPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(child: Text("Status Page")),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Image(image: AssetImage("images/icon_write.png"), color: Colors.white),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
