






import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});

  TextEditingController phonecontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 80),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Sign In",
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
              "Forgotten Password?",
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            customButton("SIgn in", (){
               Get.toNamed(bottomnavbar);
            }),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 120,
              ),
              child: Row(
                children: [
                const   Text(
                    "Dont have an account? ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                      onTap: () {
                         Get.toNamed(signup);
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.blue,
                            fontWeight: FontWeight.bold),
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}