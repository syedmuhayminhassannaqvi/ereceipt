import 'package:erexeipt/splashscreen/mainSplashScreen.dart';
import 'package:erexeipt/splashscreen/welcomeScreenOne.dart';
import 'package:erexeipt/splashscreen/welcomeScreenSecond.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.montserratTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      // Specify the initial route here if needed
      home: WelcomeScreenOne(),
    );
  }
}
