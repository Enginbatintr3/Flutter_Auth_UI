import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:richlineinterface/utils/button3d.dart';

class Button extends StatelessWidget {
  String label;
  Button({
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: Button3D(
        width: 270,
        style: StyleOf3dButton(
          borderRadius: BorderRadius.circular(20),
          width: 200,
          backColor: Colors.grey.shade900,
          topColor: Colors.grey.shade900,
          height: 100,
        ),
        onPressed: () {},
        child: Center(
          child: Text(
            label,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
