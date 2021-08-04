import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Common_Components/default_padding.dart';


class AddCart extends StatelessWidget {
  const AddCart({
    Key key,
    @required this.tap,
  }) : super(key: key);

  final GestureTapCallback tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kDefaultPadding * 2),
          color: kRedColor
        ),
        height: 50.0,
        alignment: Alignment.center,
        child: Text(
          'Add to Cart',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
      ),
    );
  }
}