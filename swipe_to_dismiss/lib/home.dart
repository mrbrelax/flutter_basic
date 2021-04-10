import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Dismissible";
  final _items = List<String>.generate(25, (index) => "item ${index + 1}");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final _item = _items[index];
          return Dismissible(
            // key: Key('${_items[index]}'),
            key: UniqueKey(),
            direction: DismissDirection.horizontal,
            resizeDuration: Duration(seconds: 2),
            movementDuration: Duration(seconds: 1),
            background: Container(
              color: Colors.green,
              child: Icon(Icons.edit),
            ),
            secondaryBackground: Container(
              color: Colors.red,
              child: Icon(Icons.delete),
            ),
            onDismissed: (_direction) {
              if (_direction == DismissDirection.endToStart) {
                _items.removeAt(index);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$_item dismissed'),
                    duration: Duration(seconds: 1),
                  ),
                );
              } else if (_direction == DismissDirection.startToEnd) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('$_item edited'),
                    duration: Duration(seconds: 1),
                  ),
                );
              }
            },
            child: Container(
              padding: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  '${_items[index]}',
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
