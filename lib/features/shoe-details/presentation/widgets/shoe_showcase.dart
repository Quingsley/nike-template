import 'package:flutter/material.dart';

class ShoeShowCaseCard extends StatelessWidget {
  const ShoeShowCaseCard({super.key, required this.imgPath});
  final String? imgPath;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(4),
      elevation: 5,
      child: Container(
        height: 56,
        width: 56,
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          image: DecorationImage(
            image: AssetImage(imgPath ?? 'assets/images/image_not_found.png'),
          ),
        ),
      ),
    );
  }
}
