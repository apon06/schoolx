import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlowingText extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;
  final Color shadowColor;
  final double blueRadius;
  final GoogleFonts? googleFonts;
  const GlowingText(
      {Key? key,
      required this.text,
      required this.fontWeight,
      required this.color,
      required this.shadowColor,
      required this.blueRadius,
      required this.fontsize,
      this.googleFonts})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.acme(
        textStyle: TextStyle(
          fontSize: fontsize,
          fontWeight: fontWeight,
          color: color,
          shadows: [
            Shadow(
              blurRadius: blueRadius,
              color: shadowColor,
            ),
          ],
        ),
      ),
    );
  }
}
