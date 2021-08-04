import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin{
  TabController tabController;
  
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor:  Color.fromRGBO(33, 158, 188, 1),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 65.0),
            child: Row(
              children: <Widget>[
                Icon(Icons.menu, color: Color.fromRGBO(0, 78, 117, 10), size: screenSize.height * 0.04,),
                Spacer(),
                Icon(Icons.shopping_cart, color: Color.fromRGBO(0, 78, 117, 10), size: screenSize.height * 0.04,)
              ],
            ),
          ),
          SizedBox(height: screenSize.height * 0.04,),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50.0,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
                border: Border.all(color: Colors.grey, width: 0.5),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Row(
                  children: <Widget>[
                    Text("Search here", style: GoogleFonts.raleway(
                      color: Color.fromRGBO(0, 78, 117, 10),
                      fontSize: screenSize.height * 0.03,
                      fontWeight: FontWeight.bold,
                    ),),
                    Spacer(),
                    Icon(Icons.search, color: Color.fromRGBO(0, 78, 117, 10), size: screenSize.height * 0.03,)
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: screenSize.height * 0.03,),
          TabBar(
            controller: tabController,
            indicatorColor: Color.fromRGBO(251, 133, 0, 10),
              indicatorWeight: 3.0,
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromRGBO(0, 78, 117, 10),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text("Italian", style: GoogleFonts.raleway(
                    fontSize: screenSize.height * 0.03,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
                Tab(
                  child: Text("Chinese", style: GoogleFonts.raleway(
                      fontSize: screenSize.height * 0.03,
                      fontWeight: FontWeight.bold,
                  ),),
                ),
                Tab(
                  child: Text("Breakfast", style: GoogleFonts.raleway(
                      fontSize: screenSize.height * 0.03,
                      fontWeight: FontWeight.bold,
                  ),),
                ),
                Tab(
                  child: Text("Sushi", style: GoogleFonts.raleway(
                      fontSize: screenSize.height * 0.03,
                      fontWeight: FontWeight.bold,
                  ),),
                ),
                Tab(
                  child: Text("Nepali", style: GoogleFonts.raleway(
                      fontSize: screenSize.height * 0.03,
                      fontWeight: FontWeight.bold,
                  ),),
                ),
              ]),
              
        ],
      ),

    );
  }
  
}
