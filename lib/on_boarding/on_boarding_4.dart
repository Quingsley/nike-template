import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/components/button.dart';

class OnBoarding4 extends StatelessWidget {
  const OnBoarding4({super.key, required this.bgColor});
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: MediaQuery.of(context).size.height * .15,
                    left: MediaQuery.of(context).size.width * .13,
                    child: Image.asset(
                      'assets/images/Vector_6.png',
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .15,
                    left: MediaQuery.of(context).size.width * .15,
                    child: Transform.rotate(
                      angle: 75,
                      child: Row(
                        children: [
                          Image.asset(
                            'assets/images/Vector_5.png',
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 12,
                          ),
                          Image.asset(
                            'assets/images/Vector_5.png',
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Stack(children: [
                Positioned(
                  bottom: MediaQuery.of(context).size.height * .005,
                  left: MediaQuery.of(context).size.width * .3,
                  child: Image.asset('assets/images/Ellipse_3.png'),
                ),
                Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Vector_17.png'),
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/shoe_3.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ]),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Vector_13.png',
                    ),
                    fit: BoxFit.contain,
                  ),
                ),
                child: Stack(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'You Have The',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontFamily: GoogleFonts.raleway().fontFamily,
                            fontSize: 34,
                            inherit: false,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Power To',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontFamily: GoogleFonts.raleway().fontFamily,
                            fontSize: 34,
                            inherit: false,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'There Are Many Beatuiful And Atrractive',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            inherit: false,
                          ),
                        ),
                        Text(
                          'Plants To Your Room',
                          style: TextStyle(
                            color: Colors.white.withOpacity(.5),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontFamily: GoogleFonts.poppins().fontFamily,
                            inherit: false,
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * .04,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * .3,
                            ),
                            Image.asset('assets/images/Line_34.png'),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset('assets/images/Line_34.png'),
                            const SizedBox(
                              width: 12,
                            ),
                            Image.asset('assets/images/Line_33.png'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const NikeButton(text: 'Next')
          ],
        ),
      ),
    );
  }
}
