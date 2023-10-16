import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
class EasyTextWidget extends StatelessWidget {
  const EasyTextWidget({
    super.key,required this.color, required this.text, required this.fontSize, required this.fontWeight,
  });
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(text,style: GoogleFonts.poppins(
        color: color,
        fontSize: fontSize,fontStyle:FontStyle.normal,fontWeight: fontWeight),);
  }
}