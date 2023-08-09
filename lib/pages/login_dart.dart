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

  final _formkey = GlobalKey<FormState>();

  moveToHome (BuildContext context) async {

    if(_formkey.currentState!.validate()){
      setState(() {
        changebutton = true;
      });
      await Future.delayed(Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);
      
      setState(() {
        changebutton = false;
      });
    }
  }
  

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Form(
          key: _formkey,
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
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your username";
                        }
                        return null;
                      },
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
                        ),
                      validator : (value) {
                        if (value!.isEmpty) {
                          return "Please enter your password";
                        }else if(value.length < 6) {
                          return "password must be at least 6 characters";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        setState(() {
                          name = value;
                        });
                      },
                   ),
                        
                    const SizedBox(
                      height: 40,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.deepPurple,
                      child: InkWell(
                        onTap: () => moveToHome(context),
                        child: AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          width: changebutton ? 50:150,
                          height: 50,
                          alignment: Alignment.center,
                          // color: Colors.deepPurple,
                          child: changebutton ? const Icon(
                            Icons.done,
                            color: Colors.white,
                          ) : const Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
