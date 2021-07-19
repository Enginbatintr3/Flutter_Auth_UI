import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

AppBar appBar() {
  return AppBar(
    automaticallyImplyLeading: false,
    title: Text(
      "Rich Line",
      style: GoogleFonts.openSans(
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    ),
    centerTitle: true,
  );
}
