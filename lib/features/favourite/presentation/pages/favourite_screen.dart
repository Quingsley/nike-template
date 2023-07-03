import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/constants/app_styles.dart';
import 'package:nike_app/common/widgets/app_bar_menu_icon.dart';
import 'package:nike_app/features/favourite/presentation/widgets/fav_shoe_card.dart';
import 'package:nike_app/features/home/data/models/shoe_category_model.dart';

List<ShoeCategoryModel> _shoeCategories = [
  ShoeCategoryModel(
    title: 'Nike Air Jordan',
    price: 47.8,
    brand: 'Nike Club Max',
    type: 'BEST SELLER',
    imgPath: 'assets/images/fav_shoe_1.png',
    isFavourite: true,
  ),
  ShoeCategoryModel(
    title: 'Nike Air Jordan',
    price: 37.8,
    brand: 'Nike Air Max',
    type: 'BEST SELLER',
    imgPath: 'assets/images/fav_shoe_2.png',
    isFavourite: true,
  ),
  ShoeCategoryModel(
    title: 'Nike Air Jordan',
    price: 57.6,
    brand: 'Nike Air Jordan',
    type: 'BEST SELLER',
    imgPath: 'assets/images/fav_shoe_3.png',
    isFavourite: true,
  ),
  ShoeCategoryModel(
    title: 'Nike Air Jordan',
    price: 58.7,
    brand: 'Nike  Jordan',
    type: 'BEST SELLER',
    imgPath: 'assets/images/fav_shoe_4.png',
    isFavourite: true,
  ),
];

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key, required this.detailsPath});

  static const String route = '/favourite';
  final String detailsPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyles.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: const AppBarMenuIcon(),
        title: Text(
          'Favourite',
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: SvgPicture.asset('assets/images/heart.svg'),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
            itemCount: _shoeCategories.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 2,
              childAspectRatio: 1 / 1.5,
              crossAxisSpacing: 2,
            ),
            itemBuilder: (BuildContext context, int index) {
              return FavouriteShoeCard(
                category: _shoeCategories[index],
                index: index,
                detailsPath: detailsPath,
              );
            }),
      ),
    );
  }
}
