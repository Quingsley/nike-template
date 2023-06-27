import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/features/auth/presentation/pages/sign_in.dart';
import 'package:nike_app/features/shoe-details/presentation/widgets/curve_painter.dart';
import 'package:go_router/go_router.dart';
import '../../../../common/widgets/back_button.dart';

class ShoeDetail extends StatefulWidget {
  const ShoeDetail({super.key});
  static const String route = '/shoe-detail';

  @override
  State<ShoeDetail> createState() => _ShoeDetailState();
}

class _ShoeDetailState extends State<ShoeDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 80,
        leading: KBackButton(
          color: Colors.white,
          margin: 20,
          onpress: () => context.go(SignIn.route),
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
          Container(
            margin: const EdgeInsets.only(right: 20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_rounded,
                fill: 1,
                color: Theme.of(context).colorScheme.background,
                size: 28,
              ),
            ),
          ),
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
                  color: const Color(0xFF707B81)),
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
              height: 175,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x1A000000).withOpacity(.1),
                    blurRadius: 50,
                    spreadRadius: 1,
                    offset: const Offset(0, 2),
                  ),
                  BoxShadow(
                    color: const Color(0x1A000000).withOpacity(.1),
                    blurRadius: 50,
                    spreadRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ],
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/shoe_4.png'),
                ),
              ),
            ),
            CustomPaint(
              size: const Size(double.infinity, 0),
              painter: CurvePainter(context),
            ),
          ],
        ),
      ),
    );
  }
}
