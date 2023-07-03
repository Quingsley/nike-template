import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/constants/app_styles.dart';

class SubTitle extends StatelessWidget {
  const SubTitle({
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
      style: GoogleFonts.poppins(
        color: AppStyles.darkGreyTextColor,
        fontSize: fSize ?? 16,
      ),
    );
  }
}
