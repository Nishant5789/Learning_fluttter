import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_dart.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_dart.dart';

// entry point of execition
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,

      // if we choose dark theam then darktheme would be
      // execute and choose light then theme properties wokr

      theme: ThemeData(
        primarySwatch: Colors.purple,
        // primarySwatch is not a Color . It's MaterialColor . Which means it's different shades of a color a material app will use. primaryColor is one of those shades. To be exact, primaryColor is normally equal to primarySwatch[500]
        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),

      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.pink),

      // home: Homepage(),
      // either you specifed home properties of material or any page with path "/" in routes

      initialRoute: "/login",

      routes: {
        '/': (context) => Homepage(),
        '/login': (context) => Loginpage(),
      },
    );
  }
}
