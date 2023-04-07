import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTitle extends StatelessWidget {
  const KTitle({
    super.key,
    required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.raleway(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
