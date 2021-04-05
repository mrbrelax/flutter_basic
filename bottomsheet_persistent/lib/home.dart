import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = "BottomSheet";
  final scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        // ignore: deprecated_member_use
        child: RaisedButton(
          onPressed: () {
            // ignore: unused_local_variable
            var bottomSheetController =
                scaffoldState.currentState!.showBottomSheet(
              (context) => Container(
                color: Colors.grey,
                child: Center(
                  child: Text(
                    'THIS IS BOTTOM SHEET',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            );
            bottomSheetController.closed.then((value) {
              print('Bottom Sheet was closed!!!');
            });
          },
          child: Text('SHOW BOTTOM SHEET'),
        ),
      ),
    );
  }
}
