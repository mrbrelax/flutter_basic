import 'package:flutter/material.dart';

class MessagPage extends StatefulWidget {
  const MessagPage({super.key});

  @override
  State<MessagPage> createState() => _MessagPageState();
}

class _MessagPageState extends State<MessagPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView.builder(
          itemBuilder: (context, int index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              color: Colors.white,
              child: ListTile(
                leading: Image.asset("assets/images/user.png", scale: 20.0),
                title: Text("User 1"),
                subtitle: Text("1 File Attachment and 2 Message"),
                trailing: Column(
                  children: [
                    Text("12:30", style: TextStyle(fontSize: 12)),
                    SizedBox(height: 4),
                    Icon(Icons.mail),
                  ],
                ),
                onTap: () {},
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.add_box,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
