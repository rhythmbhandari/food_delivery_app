import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Common_Components/input_field.dart';
import 'package:food_delivery_app/src/Common_Components/password_field.dart';

final auth1 = FirebaseAuth.instance;

class SignUpButton extends StatelessWidget {
  static String pass = PasswordField.password;
  static String em = InputField.email;
  final String text;
  final Function press;
  final Color color, textColor;
  static const Color col = Color.fromRGBO(33, 158, 188, 1);
  static const Color colText = Color.fromRGBO(230, 230, 230, 1);
  const SignUpButton({
    Key key,
    this.text,
    this.press,
    this.color = col,
    this.textColor = colText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: () {
             auth1.createUserWithEmailAndPassword(email: em, password: pass);
            
          },
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}