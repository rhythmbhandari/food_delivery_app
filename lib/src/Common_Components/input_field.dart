import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Common_Components/text_field.dart';


class InputField extends StatelessWidget {
  static String email;
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
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: (emailValue) {
          email = emailValue.trim();
          print(email);
        },
        cursorColor: Color.fromRGBO(33, 158, 188, 1),
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Color.fromRGBO(33, 158, 188, 1),
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}


