import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text("login page",
        style: TextStyle(
          color: Colors.indigo,
          fontSize: 30,
        )),
      ),
    );
  }
}
