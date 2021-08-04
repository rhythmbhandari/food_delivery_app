import 'package:flutter/material.dart';

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
          style: TextStyle(color: Color.fromRGBO(230, 230, 230, 1)),
        ),
        GestureDetector(
          onTap: press,
          child: Text(
            login ? "Sign Up" : "Sign In",
            style: TextStyle(
              color: Color.fromRGBO(230, 230, 230, 1),
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }
}
