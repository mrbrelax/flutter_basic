import 'package:flutter/material.dart';
import 'package:httprequest_getmethod/user_model.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "HTTPRequest  GET METHOD";
  // ignore: avoid_init_to_null
  User? user = null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text((user != null)
                ? user!.id + " | " + user!.name
                : "Tidak ada data"),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                User.connectToAPI("2").then((value) {
                  user = value;
                  setState(() {});
                });
              },
              child: Text("GET"),
            ),
          ],
        ),
      ),
    );
  }
}
