import 'package:flutter/material.dart';

class TextWidgetAvatar extends StatelessWidget {
  final Icon icon;

  const TextWidgetAvatar({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30,
      backgroundColor: Theme.of(context).primaryColor,
      child: icon,
    );
  }
}
