import 'package:alertdialog/alert_dialog.dart';
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
    String title = "Alert Dialog";
    bool tappedYes = false;
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            final action = await AlertDialogs.yesCancelDialog(
                context, 'Logout', 'Are You Sure?');

            if (action == DialogsAction.yes) {
              setState(() => tappedYes = true);
            } else {
              setState(() => tappedYes = false);
            }
          },
          color: Colors.blue,
          padding: const EdgeInsets.all(12.0),
          child: Text(
            'Logout'.toUpperCase(),
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
