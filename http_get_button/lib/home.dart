import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as myhttp;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String title;
  late String body;

  @override
  void initState() {
    title = "";
    body = "Tidak ada data";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "HTTP GET Button",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Container(padding: EdgeInsets.all(16), child: Text("Title : $title", style: TextStyle(fontSize: 13))),
            Text("Deskripsi: $body", style: TextStyle(fontSize: 13)),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: () async {
                    var myresponse = await myhttp.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/1"));
                    if(myresponse.statusCode == 200){
                      // Berhasil GET DATA
                      Map<String,dynamic> data = json.decode(myresponse.body) as Map<String, dynamic>;
                      setState(() {
                        title = data["title"].toString();
                        body = data["body"].toString();
                      });
                    }else{
                      // Tidak berhasil GET Data
                    }
                },
                child: Text(
                  "HTTP GET",
                  style: TextStyle(color: Colors.black),
                )),
          ],
        ),
      ),
    );
  }
}
