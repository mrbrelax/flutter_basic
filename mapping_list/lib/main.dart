import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);
  MyApp({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Bima",
      "Age": 20,
      "FavColor": [
        "Red",
        "Yellow",
        "Grey",
        "Silver",
        "Black",
        "White",
        "Green",
        "Orange",
        "Amber",
        "Purple",
        "Pink",
      ],
    },
    {
      "Name": "Rakha",
      "Age": 20,
      "FavColor": [
        "Orange",
        "Purple",
        "Pink",
        "Yellow",
        "Black",
        "Silver",
        "Red",
        "Silver",
        "Cream",
        "Amber",
        "Green"
      ],
    },
    {
      "Name": "Wahyu",
      "Age": 20,
      "FavColor": [
        "Orange",
        "Purple",
        "Pink",
        "Yellow",
        "Black",
        "Silver",
        "Red",
        "Silver",
        "Cream",
        "Amber",
        "Green"
      ],
    },
    {
      "Name": "Simon",
      "Age": 20,
      "FavColor": [
        "Orange",
        "Purple",
        "Pink",
        "Yellow",
        "Black",
        "Silver",
        "Red",
        "Silver",
        "Cream",
        "Amber",
        "Green"
      ],
    },
    {
      "Name": "Reza",
      "Age": 20,
      "FavColor": [
        "Orange",
        "Purple",
        "Pink",
        "Yellow",
        "Black",
        "Silver",
        "Red",
        "Silver",
        "Cream",
        "Amber",
        "Green"
      ],
    },
    {
      "Name": "Ines",
      "Age": 20,
      "FavColor": [
        "Orange",
        "Purple",
        "Pink",
        "Yellow",
        "Black",
        "Silver",
        "Red",
        "Silver",
        "Cream",
        "Amber",
        "Green"
      ],
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mapping List"),
          centerTitle: true,
        ),
        body: ListView(
          children: myList.map((data) {
            List myfavcolor = data["FavColor"];
            return Card(
              margin: const EdgeInsets.all(20),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(),
                        const SizedBox(width: 20),
                        Column(
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Name: ${data['Name']}"),
                            Text("Age : ${data['Age']}"),
                          ],
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: myfavcolor.map((color) {
                          return Container(
                            color: Colors.amber,
                            margin: const EdgeInsets.all(16),
                            padding: const EdgeInsets.all(10),
                            child: Text(color),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
