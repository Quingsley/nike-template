import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../common/widgets/button.dart';

class OnBoarding3 extends StatefulWidget {
  const OnBoarding3(
      {super.key,
      required this.bgColor,
      required this.curretPageNumber,
      required this.controller});
  final Color bgColor;
  final int curretPageNumber;
  final PageController controller;

  @override
  State<OnBoarding3> createState() => _OnBoarding3State();
}

class _OnBoarding3State extends State<OnBoarding3> {
  @override
  void dispose() {
    super.dispose();
    widget.controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.bgColor,
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Stack(
            children: [
              Positioned(
                top: MediaQuery.of(context).size.height * .05,
                right: MediaQuery.of(context).size.width * .05,
                child: Image.asset(
                  'assets/images/Vector_6.png',
                  color: Colors.white.withOpacity(.3),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .05,
                right: MediaQuery.of(context).size.width * .08,
                child: Transform.rotate(
                  angle: 75,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/Vector_5.png',
                        color: Colors.white.withOpacity(.3),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      Image.asset(
                        'assets/images/Vector_5.png',
                        color: Colors.white.withOpacity(.3),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .05,
                left: MediaQuery.of(context).size.width * .08,
                child: Image.asset('assets/images/Vector_7.png',
                    color: Colors.white.withOpacity(.3)),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .1,
                left: MediaQuery.of(context).size.width * .18,
                child: Image.asset(
                  'assets/images/Vector_8.png',
                  color: Colors.white.withOpacity(.3),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .14,
                left: MediaQuery.of(context).size.height * .08,
                child: Image.asset(
                  'assets/images/Vector_8.png',
                  color: Colors.white.withOpacity(.3),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * .16,
                left: MediaQuery.of(context).size.height * .08,
                child: Image.asset(
                  'assets/images/Vector_14.png',
                  color: Colors.white.withOpacity(.3),
                ),
              ),
              Positioned(
                bottom: MediaQuery.of(context).size.height * .01,
                left: MediaQuery.of(context).size.width * .16,
                child: Image.asset('assets/images/Ellipse_3.png'),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2.5,
                decoration: const BoxDecoration(
                  // color: Colors.red,
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/shoe_2.png',
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .05,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3.5,
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
                      'Let\'s Start Your Journey',
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
                      'With Nike',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.background,
                        fontFamily: GoogleFonts.raleway().fontFamily,
                        fontSize: 34,
                        inherit: false,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Smart, Gorgeous, & Fashionable',
                      style: TextStyle(
                        color: Colors.white.withOpacity(.5),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        fontFamily: GoogleFonts.poppins().fontFamily,
                        inherit: false,
                      ),
                    ),
                    Text(
                      'Collection Explore Now',
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
                        Image.asset('assets/images/Line_33.png'),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset('assets/images/Line_34.png'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .1,
          ),
          NikeButton(
            text: 'Next',
            onPress: () {
              if (widget.curretPageNumber == 1) {
                widget.controller.animateToPage(2,
                    duration: const Duration(milliseconds: 1),
                    curve: Curves.bounceIn);
              }
            },
          )
        ],
      ),
    );
  }
}
