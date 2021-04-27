import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "BottomSheet Modal";
  final scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          child: Text('BottomSheet Modal'),
          onPressed: () {
            _showModalBottomSheet();
          },
        ),
      ),
    );
  }

  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: scaffoldState.currentState!.context,
      builder: (context) => Container(
        color: Colors.blue,
        child: Center(
          child: Text(
            'BottomSheet Modal',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
