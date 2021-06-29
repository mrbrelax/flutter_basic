import 'package:bloc_statemanagement/color_bloc.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();

  @override
  void dispose() {
    bloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("BLoC tanpa library"),
          centerTitle: true,
        ),
        body: Center(
          child: StreamBuilder(
              stream: bloc.stateStream,
              initialData: Colors.amber,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                return AnimatedContainer(
                  width: 100,
                  height: 100,
                  color: snapshot.data,
                  duration: Duration(milliseconds: 500),
                );
              }),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.amber,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_amber);
              },
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              backgroundColor: Colors.lightBlue,
              onPressed: () {
                bloc.eventSink.add(ColorEvent.to_light_blue);
              },
            ),
          ],
        ),
      ),
    );
  }
}
