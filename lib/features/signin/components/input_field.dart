import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.fieldTitle,
    required this.placeHolderText,
    required this.controller,
    this.isRecoverPassword,
    this.isObscured = false,
  });
  final String fieldTitle;
  final String placeHolderText;
  final TextEditingController controller;
  final bool? isRecoverPassword;
  final bool? isObscured;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: TextFormField(
        controller: controller,
        obscureText: isObscured!,
        decoration: InputDecoration(
          label: Text(
            fieldTitle,
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, color: const Color(0xFF2B2B2B)),
          ),
          hintText: placeHolderText,
          filled: true,
          contentPadding: const EdgeInsets.all(16),
          fillColor: const Color(
            0xFF707B81,
          ).withOpacity(0.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          suffixIcon: isObscured!
              ? const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_rounded),
                )
              : null,
        ),
      ),
    );
  }
}
