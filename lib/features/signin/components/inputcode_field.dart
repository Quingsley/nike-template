import 'package:flutter/material.dart';

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
          fillColor: const Color(
            0xFF707B81,
          ).withOpacity(0.1),
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
