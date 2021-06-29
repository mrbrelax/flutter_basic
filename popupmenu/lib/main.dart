import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.blueAccent,
        primaryColorLight: Colors.lightBlue,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String title = "PopUpMenu";
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          PopupOptionMenu(),
        ],
      ),
    );
  }
}

enum MenuOption { Send, Draft, Discard }

class PopupOptionMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<MenuOption>>[
          PopupMenuItem(
            child: Text('Save'),
            value: MenuOption.Send,
          ),
          PopupMenuItem(
            child: Text('Draft'),
            value: MenuOption.Draft,
          ),
          PopupMenuItem(
            child: Text('Discard'),
            value: MenuOption.Discard,
          ),
        ];
      },
    );
  }
}
