import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final Icon icon;
  final String text;
  final TextEditingController searchShoes;
  const TextInputWidget(
      {super.key,
      required this.icon,
      required this.text,
      required this.searchShoes});

  @override
  Widget build(BuildContext context) {
    //TextEditingController searchShoes = TextEditingController();
    return TextField(
      controller: searchShoes,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          prefixIcon: icon,
          hintText: text,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(15))),
    );
  }
}
