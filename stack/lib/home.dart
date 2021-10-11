import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "Stack";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  fit: StackFit.loose,
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 175.0,
                      width: 175.0,
                      color: Colors.blue,
                    ),
                    Container(
                      height: 75.0,
                      width: 75.0,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Stack(
                  alignment: AlignmentDirectional.topEnd,
                  fit: StackFit.loose,
                  children: [
                    Container(
                      height: 175.0,
                      width: 175.0,
                      color: Colors.yellow,
                    ),
                    Container(
                      height: 125.0,
                      width: 125.0,
                      color: Colors.orange,
                    ),
                    Container(
                      height: 75.0,
                      width: 75.0,
                      color: Colors.red,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 175.0,
                width: 175.0,
                child: Stack(
                  alignment: Alignment.centerRight,
                  fit: StackFit.loose,
                  children: [
                    Container(
                      padding: EdgeInsets.all(16.0),
                      alignment: Alignment.bottomRight,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: <Color>[
                            Color(0xFF1B1377).withAlpha(0),
                            Color(0xFFFFC107),
                            Color(0xFF2196F3),
                          ],
                        ),
                      ),
                      child: Text(
                        'Mr.B Relax',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
