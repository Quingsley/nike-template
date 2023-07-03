import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/constants/app_styles.dart';

class RowWidget extends StatelessWidget {
  const RowWidget(
      {super.key, required this.leftText, required this.rightText, this.color});
  final String leftText;
  final String rightText;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          leftText,
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          rightText,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: color ?? AppStyles.darkTextColor,
          ),
        )
      ],
    );
  }
}
