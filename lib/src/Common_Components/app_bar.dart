import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar buildAppBar(BuildContext context,
    {String title, List<Widget> actions, Widget leading}) {
  return AppBar(
    backgroundColor: Colors.transparent,
    brightness: Brightness.dark,
    elevation: 0,
    title: Text(
      title,
      style: GoogleFonts.raleway(fontWeight: FontWeight.w300),
    ),
    centerTitle: true,
    leading: leading,
    actions: actions,
  );
}
