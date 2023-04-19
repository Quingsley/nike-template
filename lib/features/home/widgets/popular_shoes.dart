import 'package:flutter/material.dart';

class PopularShoes extends StatelessWidget {
  final String text;
  const PopularShoes({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    );
  }
}
