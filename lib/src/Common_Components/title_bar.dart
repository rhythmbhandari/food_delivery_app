import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivery_app/src/Common_Components/default_padding.dart';
import 'package:food_delivery_app/src/Product/product_desc.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleBar extends StatelessWidget {
  const TitleBar({
    Key key,
    @required this.item,
  }) : super(key: key);

  final Item item;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.name,
              style: GoogleFonts.raleway(
                fontSize: 24
              ),
            ),

            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                  SvgPicture.asset(
                    'assets/icons/star.svg',
                    width: kDefaultPadding * 0.8,
                  ),

                  SizedBox(width: kDefaultPadding * 0.5),

                  Text(
                    '${item.rating.toString()} (${item.ratingCount.toString()})'
                  )
              ],
            )
          ],
        ),

        IconButton(icon: Icon(Icons.favorite,color:Color.fromRGBO(230, 230, 230, 1)), onPressed: () {  },)
      ],
    );
  }
}