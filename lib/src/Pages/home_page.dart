import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:food_delivery_app/src/Common_Components/app_bar.dart';
import 'package:food_delivery_app/src/Common_Components/categories.dart';
import 'package:food_delivery_app/src/Common_Components/default_padding.dart';
import 'package:food_delivery_app/src/Common_Components/item_card.dart';
import 'package:food_delivery_app/src/Product/product_desc.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        leading: Transform.translate(
          offset: Offset(kDefaultPadding * 0.5, 0),
          child: IconButton(
            icon: Icon(Icons.menu_sharp, color: Color.fromRGBO(230, 230, 230, 1)), onPressed: () {  },
          ),
        ),
        title: '',
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.notifications_none, color: Color.fromRGBO(230, 230, 230, 1)), onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.payment_sharp, color: Color.fromRGBO(230, 230, 230, 1)), onPressed: () {  },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Color.fromRGBO(230, 230, 230, 1)), onPressed: () {  },
          )
        ]
      ),

      extendBody: true,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(kDefaultPadding),
        child: SafeArea(
          // bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Food Delivery',
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700
                ),
              ),

              SizedBox(height: kDefaultPadding),

              TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        focusedBorder:  OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        fillColor: Color.fromRGBO(33, 158, 188, 0.8),
        filled: true,
        contentPadding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        prefixIcon: IconButton(
            icon: Icon(Icons.search, color: Color.fromRGBO(230, 230, 230, 1)), onPressed: () {  },
          ),
        hintText: 'Search for Food'
      ),
    ),

              Row(
                children: [

                  Expanded(child: Categories())
                  
                ]
              ),

              SizedBox(height: kDefaultPadding),

              Text(
                "What's Trending?",
                style: GoogleFonts.raleway(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),

              SizedBox(height: kDefaultPadding),

              StaggeredGridView.countBuilder(
                 padding: EdgeInsets.all(0),
                 crossAxisCount: 2,
                 itemCount: demoItems.length,
                 crossAxisSpacing: 10,
                 physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
                 mainAxisSpacing: 0,
                 itemBuilder: (context, index) {
                   return ItemCard(item: demoItems[index], index: index);
                 },
                 staggeredTileBuilder: (index) => StaggeredTile.fit(1),
               ),
            ],
          ),
        ),
      ),
    );
  }
}