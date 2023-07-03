import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KTitle extends StatelessWidget {
  const KTitle({
    super.key,
    required this.text,
    this.fSize,
  });

  final String text;
  final double? fSize;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.raleway(
        color: Theme.of(context).colorScheme.secondary,
        fontSize: fSize ?? 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
