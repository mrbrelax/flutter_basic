import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class MyChoice {
  String choice;
  int index;
  MyChoice({required this.index, required this.choice});
}

class _HomePageState extends State<HomePage> {
  String title = "RadioButton";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: RadioGroup(),
      ),
    );
  }
}

class RadioGroup extends StatefulWidget {
  @override
  _RadioGroupState createState() => _RadioGroupState();
}

class _RadioGroupState extends State<RadioGroup> {
  // ignore: non_constant_identifier_names
  String default_choice = "COD";
  // ignore: non_constant_identifier_names
  int default_index = 0;

  List<MyChoice> choices = [
    MyChoice(index: 0, choice: "COD"),
    MyChoice(index: 1, choice: "Braintree"),
    MyChoice(index: 2, choice: "CashFree"),
    MyChoice(index: 3, choice: "PayPal"),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Wrap(
          children: <Widget>[
            Container(
              child: Column(
                children: choices
                    .map(
                      (data) => RadioListTile(
                        title: Text('${data.choice}'),
                        groupValue: default_index,
                        value: data.index,
                        onChanged: (value) {
                          setState(() {
                            default_choice = data.choice;
                            default_index = data.index;
                          });
                        },
                      ),
                    )
                    .toList(),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            '$default_choice',
            style: TextStyle(fontSize: 23.0),
          ),
        ),
      ],
    );
  }
}
