import 'package:flutter/material.dart';
import 'forget_password.dart';
import 'sign_up.dart';
import 'dashboard.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Column(
        children: [
          Text("Welcome to My Day, Login to continue"),
          SizedBox(height: 20),
          Text("Email:"),
          TextFormField(),
          SizedBox(height: 10),
          Text("Password:"),
          TextFormField(obscureText: true),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => Dashboard()),
                (route) => false,
              );
            },
            child: Text("Submit"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ForgetPassword()),
              );
            },
            child: Text("Forget password"),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignUp()),
              );
            },
            child: Text("Sign up"),
          ),
        ],
      ),
    );
  }
}
