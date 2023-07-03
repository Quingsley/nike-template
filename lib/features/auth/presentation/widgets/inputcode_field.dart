import 'package:flutter/material.dart';
import 'package:nike_app/common/constants/app_styles.dart';

class InputCodeField extends StatelessWidget {
  const InputCodeField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 75,
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          fillColor: AppStyles.darkGreyTextColor.withOpacity(0.1),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
