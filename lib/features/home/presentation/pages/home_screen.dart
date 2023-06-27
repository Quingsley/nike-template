import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/features/home/data/models/categories_model.dart';
import 'package:nike_app/features/home/data/models/shoe_category_model.dart';
import 'package:nike_app/features/home/presentation/widgets/category_action_header.dart';
import 'package:nike_app/features/home/presentation/widgets/category_card.dart';
import 'package:nike_app/features/home/presentation/widgets/category_shoe_card.dart';
import 'package:nike_app/features/home/presentation/widgets/home_card_shoe_banner.dart';

List<Categories> _categories = [
  Categories(
    title: 'All Shoes',
    isSelected: false,
  ),
  Categories(
    title: 'OutDoor',
    isSelected: true,
  ),
  Categories(
    title: 'Tennis',
    isSelected: false,
  ),
];
List<ShoeCategoryModel> _shoeCategories = [
  ShoeCategoryModel(
    title: 'Nike Air Jordan',
    price: 302,
    brand: 'Nike Air Jordan',
    type: 'BEST SELLER',
    imgPath: 'assets/images/home_shoe_1.png',
    isFavourite: false,
  ),
  ShoeCategoryModel(
    title: 'Nike Air Jordan',
    price: 752,
    brand: 'Nike Air Jordan',
    type: 'BEST SELLER',
    imgPath: 'assets/images/home_shoe_2.png',
    isFavourite: true,
  ),
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const String route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7F9),
      appBar: AppBar(
        leadingWidth: 50,
        //TODO: ADD AN ACTION
        leading: Container(
          margin: const EdgeInsets.only(left: 20),
          height: 40,
          child: SvgPicture.asset(
            'assets/images/img_hamburger.svg',
            height: 40,
            // fit: BoxFit.contain,
          ),
        ),
        title: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: SvgPicture.asset(
                'assets/images/img_maximize_blue_gray_900.svg',
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                'Explore',
                style: GoogleFonts.raleway(
                  fontWeight: FontWeight.w700,
                  fontSize: 32,
                  color: Theme.of(context).colorScheme.secondary,
                ),
              ),
            ),
          ],
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: SvgPicture.asset(
                'assets/images/img_lock.svg',
                height: 40,
              ),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: MediaQuery.sizeOf(context).width * .7,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.04),
                        blurRadius: 4,
                        spreadRadius: 4,
                        offset: const Offset(4, 4),
                      ),
                    ],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(10),
                      prefixIcon: Icon(
                        Icons.search,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      hintText: 'Looking for shoes',
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0XFF0D6EFD),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: SvgPicture.asset('assets/images/img_sliders.svg'),
                )
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Select Category',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.raleway(
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    height: 75,
                    child: ListView.builder(
                      itemCount: _categories.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: ((context, index) => CategoryCard(
                            category: _categories[index],
                          )),
                    ),
                  ),
                  const CategoryActionHeader(
                    leftTitle: 'Popular Shoes',
                  ),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _shoeCategories.length,
                      itemBuilder: (context, index) => CategoryShoeCard(
                        category: _shoeCategories[index],
                      ),
                    ),
                  ),
                  const CategoryActionHeader(leftTitle: 'New Arrivals'),
                  const ShoeCardBanner(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
