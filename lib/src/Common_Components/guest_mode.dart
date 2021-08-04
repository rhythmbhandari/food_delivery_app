import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GuestMode extends StatelessWidget {
  final Function press;
  const GuestMode({
    Key key,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: press,
          child: Text(
            "Guest Mode?",
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
