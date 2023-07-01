import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/cmn_text.dart';
import 'package:nike_app/features/home/data/models/shoe_category_model.dart';
import 'package:nike_app/features/notifications/presentation/widgets/notification_tile.dart';

List<ShoeCategoryModel> _shoes = [
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
    isFavourite: false,
  ),
];

class NotificationsScreen extends StatelessWidget {
  const NotificationsScreen({super.key});

  static const String route = '/notifications';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7F9),
      appBar: AppBar(
        title: ReusableText(
          text: 'Notifications',
          fSize: 16,
          fFamily: GoogleFonts.raleway().fontFamily,
          fWeight: FontWeight.w600,
        ),
        centerTitle: true,
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset('assets/images/img_trash2.svg'),
            ),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReusableText(
              text: 'Recent',
              fSize: 18,
              fFamily: GoogleFonts.raleway().fontFamily,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _shoes.length,
                itemBuilder: (context, index) => NotificationTile(
                  message: 'We Have New \nProducts With Offers',
                  newPrice: (58 * index + 2).toDouble(),
                  shoeModel: _shoes[index],
                  duration: DateTime.now(),
                ),
              ),
            ),
            ReusableText(
              text: 'Yesterday',
              fSize: 18,
              fFamily: GoogleFonts.raleway().fontFamily,
              color: Theme.of(context).colorScheme.secondary,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _shoes.reversed.toList().length,
                itemBuilder: (context, index) => NotificationTile(
                  message: 'We Have New \nProducts With Offers',
                  newPrice: (58 * index + 2).toDouble(),
                  shoeModel: _shoes[index],
                  duration: DateTime.now(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
