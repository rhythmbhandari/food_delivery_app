import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/Common_Components/app_bar.dart';
import 'package:food_delivery_app/src/Common_Components/buy_button.dart';
import 'package:food_delivery_app/src/Common_Components/counter.dart';
import 'package:food_delivery_app/src/Common_Components/default_padding.dart';
import 'package:food_delivery_app/src/Common_Components/title_bar.dart';
import 'package:food_delivery_app/src/Product/product_desc.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatelessWidget {
  final Item item;

  const DetailsPage({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: buildAppBar(
        context,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios,color: Color.fromRGBO(230, 230, 230, 1)), onPressed: () { 
            Navigator.pop(context);
          }
        ),
        title: 'Detail',
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.thumbs_up_down,color:Color.fromRGBO(230, 230, 230, 1)), onPressed: () {  },
          )
        ]
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            margin: EdgeInsets.only(top: size.height * 0.2),
            padding: EdgeInsets.only(top: size.height * 0.2),
            height: size.height * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(kDefaultPadding * 5),
                topRight: Radius.circular(kDefaultPadding * 5),
              ),
              color: Color(item.color)
            ),
            child: SingleChildScrollView(
              padding: EdgeInsets.fromLTRB(kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleBar(item: item),

                    SizedBox(height: kDefaultPadding),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Detail',
                          style: GoogleFonts.raleway(
                            fontSize: 18
                          ),
                        ),

                        QtyCounter(),
                      ],
                    ),

                    SizedBox(height: kDefaultPadding),

                    Text(
                      item.description,
                      style: GoogleFonts.raleway(
                        fontSize: 14
                      ),
                    ),

                    SizedBox(height: kDefaultPadding),

                    PriceAndBuy(item: item)
                  ],
                ),
              ),
            ),
          ),

          Hero(
            tag: item.id,
            child: Image.asset(
              item.image,
              height: size.height * 0.4,
              fit: BoxFit.fitHeight,
            )
          ),
        ],
      ),
    );
  }

}