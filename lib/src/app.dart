import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Pages/welcome_page.dart';
import 'package:google_fonts/google_fonts.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Delivery',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(33, 158, 188, 1),
        scaffoldBackgroundColor: Color.fromRGBO(251, 133, 0, 10),
        textTheme: GoogleFonts.rubikTextTheme(Theme.of(context).textTheme),
      ),
      home: WelcomePage(),
    );
  }
}
