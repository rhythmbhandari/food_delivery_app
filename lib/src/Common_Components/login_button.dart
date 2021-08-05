import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Common_Components/text_field.dart';
import 'package:food_delivery_app/src/Pages/home_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:food_delivery_app/src/Pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

final auth = FirebaseAuth.instance;

class LoginButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  static const Color col = Color.fromRGBO(33, 158, 188, 1);
  static const Color colText = Color.fromRGBO(230, 230, 230, 1);
  const LoginButton({
    Key key,
    this.text,
    this.press,
    this.color = col,
    this.textColor = colText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: screenSize.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: FlatButton(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          color: color,
          onPressed: () => _signin(
              _InputFieldState._email, _PasswordFieldState._password, context),
          child: Text(
            text,
            style: GoogleFonts.raleway(color: textColor),
          ),
        ),
      ),
    );
  }

  _signin(String em, String pass, context) async {
    try {
      await auth.signInWithEmailAndPassword(email: em, password: pass);
      Fluttertoast.showToast(
        msg: "Welcome Back",
        gravity: ToastGravity.TOP,
      );
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) => HomePage()));
    } catch (error) {
      Fluttertoast.showToast(
          msg: "Sorry, work in progress. The error : " + error.message,
          gravity: ToastGravity.TOP);
    }
  }
}

class SignUpButton extends StatelessWidget {
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
          onPressed: () => _signup(
              _InputFieldState._email, _PasswordFieldState._password, context),
          child: Text(
            text,
            style: GoogleFonts.raleway(color: textColor),
          ),
        ),
      ),
    );
  }

  _signup(String em, String pass, context) async {
    try {
      //Create Get Firebase Auth User
      await auth.createUserWithEmailAndPassword(email: em, password: pass);
      //Success
      Fluttertoast.showToast(
        msg: "Account Successfully Created",
        gravity: ToastGravity.TOP,
      );
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => LoginPage()));
    } catch (error) {
      Fluttertoast.showToast(
        msg: "Sorry, work in progress. The error : " + error.message,
        gravity: ToastGravity.TOP,
      );
    }
  }
}

class PasswordField extends StatefulWidget {
  final ValueChanged<String> onChanged;
  const PasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  static String _password;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        onChanged: (passwordValue) {
          setState(() {
            _password = passwordValue.trim();
            print(_password);
          });
        },
        cursorColor: Color.fromRGBO(33, 158, 188, 1),
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Color.fromRGBO(33, 158, 188, 1),
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Color.fromRGBO(33, 158, 188, 1),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}

class InputField extends StatefulWidget {
  final String hintText;
  final IconData icon;
  final ValueChanged<String> onChanged;
  const InputField({
    Key key,
    this.hintText,
    this.icon = Icons.person,
    this.onChanged,
  }) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  String hintText;

  static String _email;
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (emailValue) {
          setState(() {
            _email = emailValue.trim();
          });
        },
        cursorColor: Color.fromRGBO(33, 158, 188, 1),
        decoration: InputDecoration(
          icon: Icon(
            Icons.person,
            color: Color.fromRGBO(33, 158, 188, 1),
          ),
          hintText: "Your Email",
          border: InputBorder.none,
        ),
      ),
    );
  }
}
