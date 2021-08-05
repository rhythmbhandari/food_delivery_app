
import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Common_Components/default_padding.dart';
import 'package:food_delivery_app/src/Pages/details_page.dart';
import 'package:food_delivery_app/src/Product/product_desc.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key key,
    @required this.item,
    @required this.index,
  }) : super(key: key);

  final Item item;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsPage(item: item)));
      },
     child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Color(item.color)
        ),
        margin: EdgeInsets.only(top: index.isOdd ? 10 : 10, bottom: index.isOdd ? 10 : 10),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
             tag: item.id,
             child: Image.asset(
                item.image,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.6),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item.name,
                      ),
                      Text(
                        '\$ ${item.price}',
                        style: GoogleFonts.raleway(
                          color: kRedColor,
                          fontWeight: FontWeight.bold
                        ),
                      )
                    ],
                  ),

                  IconButton(icon: Icon(Icons.favorite,color:Color.fromRGBO(230, 230, 230, 1)), onPressed: () {  },)
                  
                ],
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
