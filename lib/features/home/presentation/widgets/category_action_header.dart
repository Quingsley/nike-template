import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/constants/app_styles.dart';

class CategoryActionHeader extends StatelessWidget {
  const CategoryActionHeader({super.key, required this.leftTitle});

  final String leftTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          leftTitle,
          style: GoogleFonts.raleway(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        const Spacer(),
        InkWell(
          splashColor: Theme.of(context).colorScheme.primary,
          child: GestureDetector(
            onTap: () {},
            child: Text(
              'See all',
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: AppStyles.blueLightShade,
              ),
            ),
          ),
        )
      ],
    );
  }
}
