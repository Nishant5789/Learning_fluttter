import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/login_dart.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/themes.dart';
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

      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),

      // home: Homepage(),
      // either you specifed home properties of material or any page with path "/" in routes

      initialRoute: MyRoutes.homeRoute,

      routes: {
        MyRoutes.homeRoute: (context) => Homepage(),
        MyRoutes.loginRoute: (context) => Loginpage(),
      },
    );
  }
}
