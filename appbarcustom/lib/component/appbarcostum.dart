import 'package:appbarcustom/component/drawercustom.dart';
import 'package:flutter/material.dart';

class CustomScaffold extends StatelessWidget {
  const CustomScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/images/RelaxChatting_Logo.png", width: 30, height: 30),
          ],
        ),
      ),
      drawer: const CustomDrawer(),
    );
  }
}
