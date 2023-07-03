import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:nike_app/common/constants/app_styles.dart';
import 'package:nike_app/common/widgets/cmn_text.dart';
import 'package:nike_app/features/home/data/models/shoe_category_model.dart';

class NotificationTile extends StatelessWidget {
  const NotificationTile({
    super.key,
    required this.message,
    required this.newPrice,
    required this.shoeModel,
    required this.duration,
  });
  final String message;
  final ShoeCategoryModel shoeModel;
  final double newPrice;
  final DateTime duration;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(8),
      height: 105,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(
              color: AppStyles.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage(shoeModel.imgPath),
              ),
            ),
          ),
          const SizedBox(width: 4),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ReusableText(
                text: message,
                fSize: 14,
                fFamily: GoogleFonts.raleway().fontFamily,
                color: AppStyles.blueLightShade,
                fWeight: FontWeight.w500,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ReusableText(
                    text: '\$${shoeModel.price}',
                    fSize: 14,
                    color: Theme.of(context).colorScheme.secondary,
                    fWeight: FontWeight.w500,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  ReusableText(
                    text: '\$$newPrice',
                    fSize: 14,
                    color: AppStyles.darkGreyTextColor,
                    fWeight: FontWeight.w500,
                  ),
                ],
              ),
            ],
          ),
          ReusableText(
            text: '${DateFormat.m().format(duration)} min ago',
            fSize: 14,
            color: AppStyles.darkGreyTextColor,
            fWeight: FontWeight.w500,
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
