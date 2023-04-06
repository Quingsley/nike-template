import 'package:flutter/material.dart';

class GButton extends StatelessWidget {
  const GButton({super.key, required this.text, this.onpress});
  final String text;
  final Function()? onpress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black,
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/google.png',
              width: 25,
              height: 25,
              cacheHeight: 50,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ));
  }
}
