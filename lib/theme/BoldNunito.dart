import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BoldNunito extends StatelessWidget {
  final String input;
  final Color color;
  final TextAlign align;
  const BoldNunito(
      {Key? key, required this.input, required this.color, required this.align})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$input",
      style: GoogleFonts.nunito(
        fontSize: 20,
        color: color,
        fontWeight: FontWeight.bold,
      ),
      textAlign: align,
    );
  }
}
