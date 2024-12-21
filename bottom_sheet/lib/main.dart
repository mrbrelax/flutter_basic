import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Sheet"),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  context: context,
                  isDismissible: false,
                  builder: (context) => SizedBox(
                    height: 300,
                    // color: Colors.white,
                    child: ListView(
                      children: [
                        ListTile(
                          leading: const Icon(Icons.photo),
                          title: const Text("Photo"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(Icons.video_collection),
                          title: const Text("Video"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(Icons.share),
                          title: const Text("Share"),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: const Icon(Icons.cancel),
                          title: const Text("Cancel"),
                          onTap: () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: const Text("Show Bottom Sheet"),
            ),
          ),
        ),
      ),
    );
  }
}
