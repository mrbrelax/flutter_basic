import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController titleC = TextEditingController();
  TextEditingController bodyC = TextEditingController();

  String hasilResponse = "Belum ada data";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("HTTP POST"), backgroundColor: Colors.blue),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: titleC,
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Title",
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: bodyC,
              autocorrect: false,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Body",
              ),
            ),
          ),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () async {
             var myresponse = await http.post(
                Uri.parse("https://jsonplaceholder.typicode.com/posts"),
                body: {"title": titleC.text, "body": bodyC.text},
              );

             Map<String, dynamic> data =  json.decode(myresponse.body) as Map<String, dynamic>;
             setState(() {
               hasilResponse = "${data['title']} - ${data['body']}";
             });
            },
            child: const Text("SUBMIT"),
          ),
          const SizedBox(height: 15),
          Divider(color: Colors.grey[400]),
          const SizedBox(height: 10),
          Container(padding: const EdgeInsets.all(16), child: Text(hasilResponse)),
        ],
      ),
    );
  }
}
