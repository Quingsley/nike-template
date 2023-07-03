import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/constants/app_styles.dart';
import 'package:nike_app/features/home/data/models/shoe_category_model.dart';

class CartCardContainer extends StatelessWidget {
  const CartCardContainer(
      {super.key, required this.index, required this.shoeType});
  final int index;
  final ShoeCategoryModel shoeType;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(index),
      onDismissed: (direction) {
        if (direction == DismissDirection.endToStart) {
          // print('DELETING');
        } else if (direction == DismissDirection.startToEnd) {
          // print('ADDING');
        }
      },
      background: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(left: 16),
              width: 60,
              height: 100,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: BorderRadius.circular(8)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text(
                    '1',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  const Text(
                    '2',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      secondaryBackground: Container(
        margin: const EdgeInsets.only(right: 16),
        decoration: BoxDecoration(
            color: AppStyles.errorColor,
            borderRadius: BorderRadius.circular(8)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/images/img_trash2.svg',
                width: 48,
                height: 48,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
      child: Container(
        margin: const EdgeInsets.all(12),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 90,
              height: 90,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: const Color(0XFFF7F7F9),
                image: DecorationImage(
                  image: AssetImage(shoeType.imgPath),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  shoeType.brand!,
                  textAlign: TextAlign.left,
                  style: GoogleFonts.raleway(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: AppStyles.darkTextColor,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text('\$${shoeType.price}',
                    textAlign: TextAlign.left,
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: AppStyles.darkTextColor,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
