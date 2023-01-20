import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegularNunito extends StatelessWidget {
  final String input;
  final Color color;
  final TextAlign align;
  final double size = 16;
  const RegularNunito(
      {Key? key, required this.input, required this.color, required this.align})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "$input",
      style: GoogleFonts.nunito(
        fontSize: size,
        color: color,
        fontWeight: FontWeight.normal,
      ),
      textAlign: align,
    );
  }
}
