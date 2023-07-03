import 'package:flutter/material.dart';
import 'package:nike_app/common/constants/app_styles.dart';

class LineSeparator extends StatelessWidget {
  const LineSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .5,
      child: Row(
        children: List.generate(
          108,
          (index) => index.isEven
              ? Container(
                  height: 1,
                  width: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: AppStyles.darkGreyTextColor,
                  ),
                )
              : Container(
                  height: 1,
                  width: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
        ),
      ),
    );
  }
}
