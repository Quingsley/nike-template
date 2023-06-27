import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/features/home/data/models/categories_model.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final Categories category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
        color: category.isSelected
            ? Theme.of(context).colorScheme.primary
            : Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          category.title,
          textAlign: TextAlign.center,
          style: GoogleFonts.poppins(
              fontSize: 12,
              color: category.isSelected
                  ? Theme.of(context).colorScheme.inversePrimary
                  : Theme.of(context).colorScheme.onBackground,
              letterSpacing: 1),
        ),
      ),
    );
  }
}
