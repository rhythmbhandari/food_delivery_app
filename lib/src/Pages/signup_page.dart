import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/src/Common_Components/account_checker.dart';
import 'package:food_delivery_app/src/Common_Components/guest_mode.dart';
import 'package:food_delivery_app/src/Common_Components/input_field.dart';
import 'package:food_delivery_app/src/Common_Components/password_field.dart';
import 'package:food_delivery_app/src/Common_Components/signup_button.dart';
import 'package:food_delivery_app/src/Pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';


class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SignUpBody(),
    );
  }
}

class SignUpBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SignUpBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "SIGNUP",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(230, 230, 230, 1),
                  fontSize: 25),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/images/7.svg",
              height: size.height * 0.35,
            ),
            InputField(
              hintText: "Your Email",
              onChanged: (value) {},
            ),
            PasswordField(
              onChanged: (value) {},
            ),
            SignUpButton(
              text: "SIGNUP",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AccountExists(
              login: false,
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
            GuestMode(
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HomePage();
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

class SignUpBackground extends StatelessWidget {
  final Widget child;
  const SignUpBackground({
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
