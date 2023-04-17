import 'package:flutter/material.dart';

class ButtonsFormatter extends StatelessWidget {
  final Function()? onpress;
  final Color color;

  final String text;
  const ButtonsFormatter({
    super.key,
    this.onpress,
    required this.text,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onpress,
      style: ElevatedButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          foregroundColor: color,
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10)),
      child: Text(text),
    );
  }
}
