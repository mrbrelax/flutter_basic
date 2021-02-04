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
  String title = "Input Widgets";
  final formKey = GlobalKey<FormState>();
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
          child: Form(
            child: Column(
              key: formKey,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // TextForm Field:
                TextFormField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    labelText: 'First Name',
                    hintText: 'Enter First Name',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter First Name';
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  cursorColor: Colors.blue,
                  decoration: InputDecoration(
                    labelText: 'Last Name',
                    hintText: 'Last Name',
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please enter Last Name';
                    }
                    return null;
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Center(
                    child: RaisedButton(
                      onPressed: () {
                        // if valid:
                        if(formKey.currentState.validate()){
                          // if valid
                        }
                      },
                      child: Text("Submit"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
