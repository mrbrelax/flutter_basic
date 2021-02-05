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

const MaterialColor _buttonTextColor = MaterialColor(0xFF2196F3, <int, Color>{
  50: Color(0xFF2196F3),
  100: Color(0xFF2196F3),
  200: Color(0xFF2196F3),
  300: Color(0xFF2196F3),
  400: Color(0xFF2196F3),
  500: Color(0xFF2196F3),
  600: Color(0xFF2196F3),
  700: Color(0xFF2196F3),
  800: Color(0xFF2196F3),
  900: Color(0xFF2196F3),
});

class _HomePageState extends State<HomePage> {
  String title = "DatePicker & Calender";

  DateTime _date = DateTime.now();

  Future<Null> _selectDate(BuildContext context) async {
    DateTime _datePicker = await showDatePicker(
        context: context,
        // CurrentDate :
        initialDate: _date,
        // FirstDate :
        firstDate: DateTime(1947),
        // LastDate :
        lastDate: DateTime(2040),
        // Header Text or Button Direction ltr or rtl :
        textDirection: TextDirection.ltr,
        // Day or Year Mode :
        initialDatePickerMode: DatePickerMode.day,
        // WeekDay Off :
        selectableDayPredicate: (DateTime val) =>
            val.weekday == 6 || val.weekday == 7 ? false : true,
        builder: (BuildContext context, Widget child) {
          return Theme(
            data: ThemeData(
              // Button Color OK and Cancel :
              primarySwatch: _buttonTextColor,
              // Picked or select Date Color :
              primaryColor: Colors.blue,
              // Picked or select Date Color :
              accentColor: Colors.blueAccent,
            ),
            child: child,
          );
        });
    if (_datePicker != null && _datePicker != _date) {
      setState(() {
        _date = _datePicker;
        print(
          _date.toString(),
        );
      });
    }
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(16.0),
              child: TextFormField(
                cursorColor: Colors.blue,
                readOnly: true,
                onTap: () {
                  setState(() {
                    _selectDate(context);
                  });
                },
                decoration: InputDecoration(
                  // you can style labelText :
                  labelText: 'Select Date',
                  labelStyle: TextStyle(fontSize: 16.0),
                  // you can style hintText :
                  hintText: (_date.toString()),
                  // Focused Border OutLine :
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2.0),
                    // BorderRadius for OutLine :
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                  // Normal Border :
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: RaisedButton(
                color: Colors.blue,
                onPressed: () {
                  setState(() {
                    _selectDate(context);
                  });
                },
                child: Text(
                  "Date Picker",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                _date.toString(),
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
