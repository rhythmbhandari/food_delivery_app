import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Function press;
  final Color color, textColor;
  static const Color col = Color.fromRGBO(33, 158, 188, 1);
  static const Color colText = Color.fromRGBO(230,230,230,1);
  const Button({
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
          onPressed: press,
          child: Text(
            text,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
