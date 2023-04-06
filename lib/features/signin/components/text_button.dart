import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TButton extends StatelessWidget {
  const TButton({
    super.key,
    required this.text,
    this.onpress,
  });
  final String text;
  final Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpress,
      child: Text(
        text,
        style: GoogleFonts.poppins(
          color: Colors.black26,
        ),
      ),
    );
  }
}
