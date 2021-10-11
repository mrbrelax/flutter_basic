import 'package:flutter/material.dart';
import 'package:httprequest_postmethod/post_result_model.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "HTTPRequest PostMethod";

  // ignore: avoid_init_to_null
  PostResult? postResult = null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text((postResult != null)
                ? postResult!.id +
                    "|" +
                    postResult!.name +
                    " | " +
                    postResult!.job +
                    " | " +
                    postResult!.created
                : "Tidak ada data"),
            // ignore: deprecated_member_use
            RaisedButton(
              onPressed: () {
                PostResult.connectToAPI("Badu", "Dokter").then((value) {
                  postResult = value;
                  setState(() {});
                });
              },
              child: Text("POST"),
            ),
          ],
        ),
      ),
    );
  }
}
