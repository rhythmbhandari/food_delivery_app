import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_delivery_app/src/Common_Components/account_checker.dart';
import 'package:food_delivery_app/src/Common_Components/guest_mode.dart';
import 'package:food_delivery_app/src/Common_Components/input_field.dart';
import 'package:food_delivery_app/src/Common_Components/login_button.dart';
import 'package:food_delivery_app/src/Common_Components/password_field.dart';
import 'package:food_delivery_app/src/Pages/home_page.dart';
import 'package:food_delivery_app/src/Pages/signup_page.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LoginBackground(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "LOGIN",
              style: GoogleFonts.raleway(
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(230, 230, 230, 1),
                  fontSize: 25),
            ),
            SizedBox(height: size.height * 0.03),
            SvgPicture.asset(
              "assets/images/6.svg",
              height: size.height * 0.35,
            ),
            SizedBox(height: size.height * 0.03),
            InputField(
              hintText: "Your Email",
              onChanged: (value) {

              },
            ),
            PasswordField(
              onChanged: (value) {},
            ),
            LoginButton(
              text: "LOGIN",
              press: () {},
            ),
            SizedBox(height: size.height * 0.03),
            AccountExists(
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

  setState() {}
}

class LoginBackground extends StatelessWidget {
  final Widget child;
  const LoginBackground({
    Key key,
    @required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: screenSize.height,
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
