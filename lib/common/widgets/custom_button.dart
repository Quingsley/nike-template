import 'package:flutter/material.dart';
import 'package:nike_app/common/constants/app_styles.dart';

class CButton extends StatelessWidget {
  const CButton(
      {super.key,
      required this.text,
      this.onpressed,
      this.fSize,
      this.hPadding});
  final String text;
  final Function()? onpressed;

  final double? fSize;
  final double? hPadding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpressed,
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        padding:
            EdgeInsets.symmetric(horizontal: hPadding ?? 120, vertical: 15),
        backgroundColor: AppStyles.blueLightShade,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        softWrap: false,
        overflow: TextOverflow.visible,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: fSize ?? 16,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
