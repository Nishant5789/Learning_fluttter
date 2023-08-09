import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;

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
            Text("Welcome $name",
                style: const TextStyle(
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
                    ),
                    onChanged: (value) {
                      setState(() {
                        name = value;
                      });
                    },
                  ),
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
                  // ElevatedButton(
                  //     onPressed: () {
                  //       print("click");
                  //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                  //     },
                  //     child: Text("Login"),
                  //     style: TextButton.styleFrom(minimumSize: Size(150, 40))),
                  InkWell(
                    onTap: () async {
                      changebutton = true;
                      setState(() {
                      });
                      await Future.delayed(Duration(seconds: 1));
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changebutton ? 50:150,
                      height: 50,
                      alignment: Alignment.center,
                      // color: Colors.deepPurple,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.deepPurple),
                      child: changebutton ? Icon(
                        Icons.done,
                        color: Colors.white,
                      ) :Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
