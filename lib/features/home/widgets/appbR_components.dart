import 'package:flutter/material.dart';

class AppBarComponents extends StatelessWidget {
  final Icon icon;
  final Color color;
  const AppBarComponents({super.key, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: color,
            child: icon,
          ),
        ),
        const Positioned(
            right: 15,
            child: CircleAvatar(
              radius: 5,
              backgroundColor: Colors.red,
            ))
      ],
    );
  }
}
