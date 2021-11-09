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
  String title = "Stepper 1";
  int _currentStep = 0;

  StepperType _stepperType = StepperType.vertical;

  switchStepType() {
    setState(
      () => _stepperType == StepperType.vertical
          ? _stepperType = StepperType.horizontal
          : _stepperType = StepperType.vertical,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Stepper(
              steps: _stepper(),
              physics: ClampingScrollPhysics(),
              currentStep: this._currentStep,
              type: _stepperType,
              onStepTapped: (step) {
                setState(() {
                  this._currentStep = step;
                });
              },
              onStepContinue: () {
                setState(() {
                  if (this._currentStep < this._stepper().length - 1) {
                    this._currentStep = this._currentStep + 1;
                  } else {
                    // your code complete
                    print('Complete');
                  }
                });
              },
              onStepCancel: () {
                setState(() {
                  if (this._currentStep > 0) {
                    this._currentStep = this._currentStep - 1;
                  } else {
                    this._currentStep = 0;
                  }
                });
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: switchStepType,
        backgroundColor: Colors.blue,
        child: Icon(
          Icons.swap_horizontal_circle,
          color: Colors.white,
        ),
      ),
    );
  }

  List<Step> _stepper() {
    List<Step> _steps = [
      Step(
        title: Text('Name'),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'First Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Last Name'),
            ),
          ],
        ),
        isActive: _currentStep >= 0,
        state: StepState.complete,
      ),
      Step(
        title: Text('Email'),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Email Address'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Recovery Email'),
            ),
          ],
        ),
        isActive: _currentStep >= 1,
        state: StepState.disabled,
      ),
      Step(
        title: Text('Mobile No.'),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Mobile No.'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Alternative Mobile No.'),
            ),
          ],
        ),
        isActive: _currentStep >= 2,
        state: StepState.editing,
      ),
      Step(
        title: Text('Address'),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Address 1'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Address 2'),
            ),
          ],
        ),
        isActive: _currentStep >= 3,
        state: StepState.error,
      ),
      Step(
        title: Text('Password'),
        content: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Confirm Password'),
            ),
          ],
        ),
        isActive: _currentStep >= 4,
        state: StepState.indexed,
      ),
    ];
    return _steps;
  }
}
