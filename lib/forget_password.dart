import 'package:flutter/material.dart';
import 'forget_password_sent.dart';
import 'auth_services.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  String email = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forget Password")),
      body: Column(
        children: [
          const Text("Use the form below to request for password reset"),
          const SizedBox(height: 20),
          const Text("Email:"),
          TextFormField(
            onChanged: (value) {
              setState(() {
                email = value;
              });
            },
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print(email);
              authServices.value.resetPassword(emailAddress: email);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ForgetPasswordSent(),
                ),
              );
            },
            child: const Text("Submit"),
          ),
        ],
      ),
    );
  }
}
