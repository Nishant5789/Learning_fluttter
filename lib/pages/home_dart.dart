import 'package:flutter/material.dart';

import '../widgets/drawer.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {

    // check scanffold - https://www.fluttercampus.com/tutorial/9/flutter-scaffold/
    
    return Scaffold(
      appBar: AppBar( 
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to 31 day flutter"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
