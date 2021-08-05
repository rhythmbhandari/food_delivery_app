import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Common_Components/default_padding.dart';
import 'package:food_delivery_app/src/Product/product_desc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'add_cart.dart';

class PriceAndBuy extends StatelessWidget {
  const PriceAndBuy({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Text(
                'Price',
                style: GoogleFonts.raleway(
                  fontSize: 18.0,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '\£ ',
                      style: GoogleFonts.raleway(
                        color: kRedColor,
                        fontSize: 22
                      )
                    ),
                    TextSpan(
                      text: item.price.toString(),
                      style: GoogleFonts.raleway(
                        color: Colors.black,
                        fontSize: 22
                      )
                    )
                  ]
                ),
              )
            ],
          )
        ),

        Spacer(),

        Expanded(
          flex: 4,
          child: AddCart(tap: () {})
        ),
      ],
    );
  }
}