import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/features/shoe-details/presentation/widgets/add_to_cart_button.dart';
import 'package:nike_app/features/shoe-details/presentation/widgets/shoe_showcase.dart';
import 'package:readmore/readmore.dart';
import '../../../../common/widgets/back_button.dart';

List<String> _imgPaths = [
  'assets/images/home_shoe_1.png',
  'assets/images/home_shoe_2.png',
  'assets/images/fav_shoe_1.png',
  'assets/images/fav_shoe_2.png',
  'assets/images/detail-shoe.png',
];

class ShoeDetail extends StatefulWidget {
  const ShoeDetail({super.key});
  static const String route = 'shoe-detail';

  @override
  State<ShoeDetail> createState() => _ShoeDetailState();
}

class _ShoeDetailState extends State<ShoeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7F9),
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 60,
        leading: KBackButton(
          color: Colors.white,
          margin: 10,
          onpress: () => context.pop(),
        ),
        title: Text(
          'Sneaker Shop',
          style: GoogleFonts.raleway(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            height: 20,
          ),
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
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 15,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Nike Air Max 270 Essential',
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                height: 1,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Men\'s Shoe',
              textAlign: TextAlign.start,
              style: GoogleFonts.raleway(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                height: .3,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              '\$179.39',
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w600,
                fontSize: 24,
                height: 1,
              ),
            ),
            Container(
              height: 170,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.08),
                    spreadRadius: .2,
                    blurRadius: 100,
                    offset: const Offset(0, 2),
                  ),
                  BoxShadow(
                    color: Colors.black.withOpacity(.08),
                    spreadRadius: .2,
                    blurRadius: 100,
                    offset: const Offset(0, 4),
                  ),
                ],
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/shoe_4.png'),
                ),
              ),
            ),
            Image.asset('assets/images/img_slider.png'),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _imgPaths.length,
                (index) => ShoeShowCaseCard(
                  imgPath: _imgPaths[index],
                ),
              ).toList(),
            ),
            const SizedBox(
              height: 10,
            ),
            ReadMoreText(
              'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike',
              trimLines: 2,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Theme.of(context).colorScheme.secondary,
              ),
              lessStyle: GoogleFonts.poppins(
                  fontSize: 12, color: Theme.of(context).colorScheme.primary),
              colorClickableText: Theme.of(context).colorScheme.primary,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read More',
              moreStyle: GoogleFonts.poppins(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 52,
                  height: 52,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color:
                        Theme.of(context).colorScheme.secondary.withOpacity(.2),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: SvgPicture.asset(
                    'assets/images/heart.svg',
                  ),
                ),
                const AddToCartBtn()
              ],
            ),
          ],
        ),
      ),
    );
  }
}

   // CustomPaint(
            //   size: const Size(double.infinity, 0),
            //   painter: CurvePainter(context),
            // ),