import 'package:flutter/material.dart';
import 'package:food_delivery_app/Reused/textfield.dart';


class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChanged,
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
