import 'package:flutter/material.dart';

class NikeButton extends StatelessWidget {
  const NikeButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => print('Get Started'),
      style: ElevatedButton.styleFrom(
        foregroundColor: const Color(0XFF2B2B2B),
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * .3,
          vertical: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(text),
    );
  }
}
