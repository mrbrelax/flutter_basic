import 'package:duration_picker/duration_picker.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      theme: ThemeData(
        primaryColor: Colors.blue,
        primaryColorLight: Colors.lightBlue,
        accentColor: Colors.blueAccent,
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    String title = "Duration Picker";
    Duration _duration = Duration(hours: 0, minutes: 0);
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Expanded(
                child: DurationPicker(
              duration: _duration,
              onChange: (val) {
                setState(() => _duration = val);
              },
              snapToMins: 5.0,
            )),
          ],
        ),
      ),
      floatingActionButton: Builder(
        builder: (BuildContext context) => FloatingActionButton(
          onPressed: () async {
            var resultDuration = await showDurationPicker(
              context: context,
              initialTime: Duration(minutes: 30),
            );
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Chose duration: $resultDuration'),
            ));
          },
          tooltip: 'Popup Duration Picker',
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
