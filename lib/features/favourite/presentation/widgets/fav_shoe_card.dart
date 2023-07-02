import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/features/home/data/models/shoe_category_model.dart';

class FavouriteShoeCard extends StatelessWidget {
  const FavouriteShoeCard(
      {super.key, required this.category, this.index, this.detailsPath});

  final ShoeCategoryModel category;
  final int? index;
  final String? detailsPath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(2),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.inversePrimary,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Material(
          color: Theme.of(context).colorScheme.inversePrimary,
          child: InkWell(
            splashColor: Theme.of(context).colorScheme.primary.withOpacity(.1),
            splashFactory: NoSplash.splashFactory,
            highlightColor:
                Theme.of(context).colorScheme.primary.withOpacity(.1),
            onTap: () => context.push(detailsPath!),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    'assets/images/img_volume.svg',
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
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
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
                    SvgPicture.asset(
                      index! % 2 == 0
                          ? 'assets/images/dot-red.svg'
                          : 'assets/images/dot-blue.svg',
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
