import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Common_Components/text_field.dart';

class PasswordField extends StatelessWidget {
  static String password;
  final ValueChanged<String> onChanged;
  const PasswordField({
    Key key,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: (passwordValue) {
                password = passwordValue.trim();
                print(password);
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

  void setState(Null Function() param0) {}
}

