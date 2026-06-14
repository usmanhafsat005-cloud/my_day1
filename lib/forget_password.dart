import 'package:flutter/material.dart';
import 'forget_password_sent.dart';
import 'auth_services.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Forget Password")),
      body: Column(
        children: [
          Text("Use the form below to request for password reset"),
          SizedBox(height: 20),
          Text("Email:"),
          TextFormField(),
          SizedBox(height: 20),
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
