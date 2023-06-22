import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'pages/homepage.dart';
import 'pages/loginpage.dart';
import 'utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      // debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.light,
      ),
      initialRoute: "/login",
      routes: {
        "/": ((context) => LoginPage()),
        MyRoutes.homeRoute: ((context) => HomePage()),
        MyRoutes.loginRoute: ((context) => LoginPage()),
      },
    );
  }
}
