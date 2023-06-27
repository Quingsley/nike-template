import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/features/home/data/models/shoe_category_model.dart';

class CategoryShoeCard extends StatelessWidget {
  const CategoryShoeCard({
    super.key,
    required this.category,
  });

  final ShoeCategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      width: 170,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              category.isFavourite ? Icons.favorite : Icons.favorite_outline,
              color: category.isFavourite
                  ? Colors.red
                  : Theme.of(context).colorScheme.secondary,
            ),
          ),
          Image.asset(
            category.imgPath,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              category.type ?? 'BEST SELLER',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              category.brand ?? 'Nike Air Jordan',
              style: GoogleFonts.raleway(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              '\$${category.price}',
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
          ),
          const Spacer(),
          Align(
            alignment: const Alignment(1, 0),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomRight: Radius.circular(12),
                  ),
                ),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
