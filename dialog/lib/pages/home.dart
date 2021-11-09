import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String data = "Belum ada input";
    return Scaffold(
      appBar: AppBar(title: const Text('Dialog'), centerTitle: true),
      body: Center(child: Text(data, style: const TextStyle(fontSize: 30))),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text("Confirm"),
                content: const Text("Are you sure to delete this item?"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        data = "True";
                      });
                    },
                    child: const Text("Yes"),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                      setState(() {
                        data = "False";
                      });
                    },
                    child: const Text("No"),
                  ),
                ],
              );
            },
          );
        },
        child: const Icon(Icons.delete),
      ),
    );
  }
}
