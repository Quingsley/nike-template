import 'package:flutter/material.dart';

//default family is poppins
class ReusableText extends StatelessWidget {
  const ReusableText(
      {super.key,
      required this.text,
      required this.fSize,
      this.fWeight,
      this.color,
      this.textAlign,
      this.fFamily,
      this.fStyle});
  final String text;
  final double fSize;
  final FontWeight? fWeight;
  final Color? color;
  final TextAlign? textAlign;
  final String? fFamily;
  final FontStyle? fStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: TextStyle(
          fontSize: fSize,
          fontWeight: fWeight,
          color: color,
          fontFamily: fFamily,
          fontStyle: fStyle),
    );
  }
}
