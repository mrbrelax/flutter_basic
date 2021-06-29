import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "DropDownButton";
  late String _friendsVal;
  List _friendsName = [
    'Syarif',
    'Iwan',
    'Fiqi',
    'Aditya R',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
            ),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2.0),
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: DropdownButton(
              hint: Text('Select Name'),
              dropdownColor: Colors.grey,
              elevation: 5,
              icon: Icon(Icons.arrow_drop_down),
              iconSize: 36.0,
              isExpanded: true,
              value: _friendsVal,
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
              ),
              onChanged: (value) {
                setState(() {
                  _friendsVal = value.toString();
                });
              },
              items: _friendsName.map(
                (value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
