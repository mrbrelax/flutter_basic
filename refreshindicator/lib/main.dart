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
    String title = "RefreshIndicator";
    Future<Null> refreshList() async {
      await Future.delayed(
        Duration(seconds: 3),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: RefreshIndicator(
        backgroundColor: Colors.blue,
        color: Colors.white,
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, i) {
            return Container(
              padding: const EdgeInsets.all(16.0),
              child: Text("Items $i"),
            );
          },
        ),
        onRefresh: refreshList,
      ),
    );
  }
}
