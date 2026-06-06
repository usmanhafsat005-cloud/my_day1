import 'package:flutter/material.dart';
import 'package:my_day/login.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile")),
      body: Column(
        children: [
          Card(child: ListTile(title: Text("Full Name:"))),
          Card(child: ListTile(title: Text("Email:"))),
          Card(child: ListTile(title: Text("Phone Number:"))),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Login()),
                (route) => false,
              );
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => Login()),
              // );
            },
            child: Text("Logout"),
          ),
        ],
      ),
    );
  }
}
