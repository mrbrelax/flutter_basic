import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Map<String, dynamic>> myList = [
    {
      "Name": "Sandika",
      "Age": 23,
      "favColor": [
        "White",
        "Red",
        "Green",
        "Purple",
        "Brown",
        "Pink",
        "Blue",
      ],
    },
    {
      "Name": "Yusuf",
      "Age": 25,
      "favColor": [
        "Black",
        "Yellow",
        "Amber",
        "Orange",
        "Brown",
        "Blue",
        "Yellow",
        "Green",
        "Red",
        "GreenAccent"
      ],
    },
    {
      "Name": "Wahyu",
      "Age": 30,
      "favColor": [
        "Black",
        "Yellow",
        "Amber",
        "Orange",
        "Brown",
        "Blue",
        "Yellow",
        "Green",
        "Red",
        "GreenAccent"
      ],
    },
    {
      "Name": "Alfurkon",
      "Age": 30,
      "favColor": [
        "Black",
        "Yellow",
        "Amber",
        "Orange",
        "Brown",
        "Blue",
        "Yellow",
        "Green",
        "Red",
        "GreenAccent"
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
              List myfavColor = data["favColor"];
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
                            children: [
                              Text("Name : ${data['Name']}"),
                              Text("Age: ${data['Age']}"),
                            ],
                          ),
                        ],
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: myfavColor.map((color) {
                            return Container(
                              child: Text(color),
                              color: Colors.amber,
                              margin: const EdgeInsets.symmetric(
                                vertical: 15,
                                horizontal: 8,
                              ),
                              padding: const EdgeInsets.all(10),
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
        ));
  }
}
