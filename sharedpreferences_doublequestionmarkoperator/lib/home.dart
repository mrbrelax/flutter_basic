import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = "Shared Preferences";
  TextEditingController controller = TextEditingController(text: "No Name");
  bool isON = false;

  void saveData() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setString("nama", controller.text);
    pref.setBool("ison", isON);
  }

  Future<String> getNama() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getString("nama") ?? "No Name";
  }

  Future<bool> getON() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    return pref.getBool("ison") ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              controller: controller,
            ),
            Switch(
              value: isON,
              onChanged: (newValue) {
                setState(() {
                  isON = newValue;
                });
              },
            ),
            ElevatedButton(
              onPressed: () {
                saveData();
              },
              child: Text("Save"),
            ),
            ElevatedButton(
              onPressed: () {
                getNama().then((s) {
                  controller.text = s;
                  setState(() {});
                });
                getON().then((b) {
                  isON = b;
                  setState(() {});
                });
              },
              child: Text("Load"),
            ),
          ],
        ),
      ),
    );
  }
}
