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
        primaryColor: Colors.green,
        primaryColorLight: Colors.lightGreen,
        accentColor: Colors.greenAccent,
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

const MaterialColor _buttonTextColor = MaterialColor(
  0xFF4CAF50,
  <int, Color>{
    50: Color(0xFF4CAF50),
    100: Color(0xFF4CAF50),
    200: Color(0xFF4CAF50),
    300: Color(0xFF4CAF50),
    400: Color(0xFF4CAF50),
    500: Color(0xFF4CAF50),
    600: Color(0xFF4CAF50),
    700: Color(0xFF4CAF50),
    800: Color(0xFF4CAF50),
    900: Color(0xFF4CAF50),
  },
);

class _HomePageState extends State<HomePage> {
  String title = "TimePicker & Clock";
  TimeOfDay _time;

  @override
  void initState() {
    super.initState();
    _time = TimeOfDay.now();
  }

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
          child: ListTile(
            title: Text('Time : ${_time.hour}:${_time.minute}'),
            trailing: Icon(Icons.timer),
            onTap: _pickTime,
          ),
        ),
      ),
    );
  }

  _pickTime() async {
    TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: _time,
      builder: (BuildContext context, Widget child) {
        return Theme(
          data: ThemeData(
            primaryColor: Colors.green,
            primaryColorLight: Colors.lightGreen,
            accentColor: Colors.greenAccent,
            primarySwatch: _buttonTextColor,
          ),
          child: MediaQuery(
            data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: child,
            ),
          ),
        );
      },
    );
    if (time != null)
      setState(() {
        _time = time;
      });
  }
}
