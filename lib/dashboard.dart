import 'package:flutter/material.dart';
import 'profile.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dashboard"),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Profile()),
              );
            },
            child: Icon(Icons.person),
          ),
        ],
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(
                title: Text("Wake up"),
                subtitle: Text("5:00 AM"),
              ),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(title: Text("Pray"), subtitle: Text("5:30 AM")),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(title: Text("Bath"), subtitle: Text("6:00 AM")),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(
                title: Text("Breakfast"),
                subtitle: Text("7:00 AM"),
              ),
            ),
          ),
          GestureDetector(
            onTap: null,
            child: Card(
              child: ListTile(title: Text("Work"), subtitle: Text("8:00 AM")),
            ),
          ),
        ],
      ),
    );
  }
}
