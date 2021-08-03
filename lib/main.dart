import 'package:flutter/material.dart';
import 'Pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(33, 158, 188, 1),
        scaffoldBackgroundColor: Color.fromRGBO(251, 133, 0, 10),
      ),
      home: LoginScreen(),
    );
  }
}
