import 'package:flutter/material.dart';

import '../CustomWidgets/CustomButton.dart';
import '../CustomWidgets/CustomTextFromField.dart';


class SignUp extends StatelessWidget {
  SignUp({super.key});

  TextEditingController phonecontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign Up",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Phone",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            customTextFromField(phonecontroller, "Enter your phone number"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Password",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            customTextFromField(passwordcontroller, "Enter your password"),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Confarm Password",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            customTextFromField(passwordcontroller, "Enter your password"),
            const SizedBox(
              height: 20,
            ),
            customButton("Sign Up", () {

            }),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 100),
              child: Text(
                "Create a  business account? ",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}