import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/src/Common_Components/button.dart';
import 'package:food_delivery_app/src/Pages/signup_page.dart';
import 'package:food_delivery_app/src/Pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

import 'login_page.dart';

class WelcomePage extends StatelessWidget {
  final auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBody(),
    );
  }
}

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return WelcomeBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "WELCOME",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(230, 230, 230, 1),
                  fontSize: 25),
            ),
            SizedBox(height: screenSize.height * 0.05),
            SvgPicture.asset(
              "assets/images/2.svg",
              height: screenSize.height * 0.45,
            ),
            SizedBox(height: screenSize.height * 0.05),
            Button(
              text: "LOGIN",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
            ),
            Button(
              text: "SIGN UP",
              color: Color.fromRGBO(230, 230, 230, 1),
              textColor: Color.fromRGBO(33, 158, 188, 1),
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return SignUpPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class WelcomeBackground extends StatelessWidget {
  final Widget child;
  const WelcomeBackground({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      height: screenSize.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              "assets/images/hehe.png",
              width: screenSize.width * 1,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
