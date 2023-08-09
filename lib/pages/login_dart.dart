import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              "assets/images/loginicon.jpg",
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text("Welcome",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                )),
            Padding(
              //  padding: const EdgeInsets.all(8.0),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: Column(
                children: [
                  TextFormField(
                      decoration: const InputDecoration(
                    // border: OutlineInputBorder(),
                    labelText: "Username",
                    hintText: "Enter your username",
                  )),
                  TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        // border: OutlineInputBorder(),
                        labelText: "Password",
                        hintText: "Enter your Password",
                      )),
                  const SizedBox(
                    height: 40,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        print("click");
                        Navigator.pushNamed(context, MyRoutes.homeRoute);
                      },
                      child: Text("Login"),
                      style: TextButton.styleFrom(minimumSize: Size(150, 40))),
                ],
              ),
            )
          ],
        ));
  }
}
