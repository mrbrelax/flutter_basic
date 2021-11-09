import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cupertino"), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text('Delete Item'),
                      content: const Text("Are You Sure?"),
                      actions: [
                        TextButton(onPressed: () {}, child: const Text("Yes")),
                        TextButton(onPressed: () {}, child: const Text("No")),
                      ],
                    );
                  },
                );
              },
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () {
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return SizedBox(
                      height: MediaQuery.of(context).size.height * 0.4,
                      child: CupertinoDatePicker(
                        onDateTimeChanged: (datetime) {
                          print(datetime);
                        },
                        backgroundColor: Colors.white,
                        initialDateTime: DateTime.now(),
                      ),
                    );
                  },
                );
              },
              child: const Text('Date Picker'),
            ),
          ],
        ),
      ),
    );
  }
}
