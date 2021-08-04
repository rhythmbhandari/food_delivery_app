import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountExists extends StatelessWidget {
  final bool login;
  final Function press;
  const AccountExists({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Don’t have an Account ? " : "Already have an Account ? ",
          
          style: GoogleFonts.raleway(color: Color.fromRGBO(230, 230, 230, 1), fontSize: 17,fontWeight: FontWeight.bold,),
          
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: GoogleFonts.raleway(
              color: Color.fromRGBO(230, 230, 230, 1),
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
      ],
    );
  }

}
