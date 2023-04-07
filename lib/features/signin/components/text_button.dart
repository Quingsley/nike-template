import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TButton extends StatelessWidget {
  const TButton({
    super.key,
    required this.text,
    this.onpress,
    this.color,
    this.boldness,
  });
  final Color? color;
  final String text;
  final FontWeight? boldness;
  final Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      child: Text(
        text,
        style: GoogleFonts.raleway(
          color: color ?? Colors.black,
          fontWeight: boldness ?? FontWeight.w700,
        ),
      ),
    );
  }
}
