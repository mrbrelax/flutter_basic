import 'package:flutter/material.dart';
import 'package:httprequest_fetchdata/user_model.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "HTTPRequest FetchData";
  String output = "No Data";
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
            Text(output),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                User.getUsers("2").then((users) {
                  output = "";
                  for (int i = 0; i < users.length; i++)
                    output = output + "[ " + users[i].name + " ] ";
                  setState(() {});
                });
              },
              child: Text("FetchData"),
            ),
          ],
        ),
      ),
    );
  }
}
