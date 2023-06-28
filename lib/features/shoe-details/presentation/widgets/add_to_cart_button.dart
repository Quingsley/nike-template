import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class AddToCartBtn extends StatelessWidget {
  const AddToCartBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(
            Theme.of(context).colorScheme.primary,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          padding: const MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: 48, vertical: 12),
          ),
          overlayColor: MaterialStatePropertyAll<Color>(
            Theme.of(context).colorScheme.inversePrimary.withOpacity(.2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset('assets/images/img_cart.svg'),
            const SizedBox(
              width: 20,
            ),
            Text(
              'Add To Cart',
              style: GoogleFonts.raleway(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            )
          ],
        ));
  }
}
