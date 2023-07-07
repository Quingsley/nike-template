import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

final _toggleSwitcher = StateProvider<bool>((ref) => false);

class InputField extends ConsumerWidget {
  const InputField({
    super.key,
    required this.fieldTitle,
    required this.placeHolderText,
    required this.controller,
    this.isRecoverPassword,
    this.isObscured = false,
    this.validator,
  });
  final String fieldTitle;
  final String placeHolderText;
  final TextEditingController controller;
  final bool? isRecoverPassword;
  final bool? isObscured;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isEyeOpen = ref.watch(_toggleSwitcher);
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20),
      child: TextFormField(
        controller: controller,
        obscureText: !isEyeOpen ? isObscured! : false,
        decoration: InputDecoration(
          label: Text(
            fieldTitle,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w400,
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          hintText: placeHolderText,
          filled: true,
          contentPadding: const EdgeInsets.all(16),
          fillColor: Theme.of(context).colorScheme.secondary.withOpacity(.1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
          suffixIcon: isObscured!
              ? IconButton(
                  color: Theme.of(context).colorScheme.secondary,
                  onPressed: () {
                    ref.read(_toggleSwitcher.notifier).state =
                        !ref.read(_toggleSwitcher.notifier).state;
                  },
                  icon: Icon(
                    isEyeOpen
                        ? Icons.remove_red_eye_rounded
                        : Icons.visibility_off_rounded,
                  ),
                )
              : null,
        ),
        validator: validator,
      ),
    );
  }
}
