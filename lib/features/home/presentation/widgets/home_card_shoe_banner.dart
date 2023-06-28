import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

//FIXME: REMOVE HARDCODED VALUES
class ShoeCardBanner extends StatelessWidget {
  const ShoeCardBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      margin: const EdgeInsets.only(top: 5, bottom: 1),
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(top: 20),
              padding:
                  const EdgeInsets.only(left: 8, top: 4, right: 8, bottom: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 75,
                    width: 132,
                    margin: const EdgeInsets.only(bottom: 11),
                    child: Stack(
                      alignment: Alignment.topRight,
                      children: [
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Summer Sale",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: GoogleFonts.raleway(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: -.24,
                                  color: const Color(0XFF3B3B3B),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 3),
                                child: Text(
                                  "15% OFF",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: GoogleFonts.bebasNeue(
                                      fontSize: 36,
                                      fontWeight: FontWeight.w900,
                                      letterSpacing: -.72,
                                      color: const Color(0XFF674DC5)),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 7),
                          child: SvgPicture.asset(
                            //magin right of 7
                            'assets/images/img_airplane.svg',
                            height: 16,
                            width: 15,
                            alignment: Alignment.topRight,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(bottom: 1),
                          child: SvgPicture.asset(
                            'assets/images/img_airplane_black_900.svg',
                            height: 16,
                            width: 15,
                            alignment: Alignment.bottomLeft,
                            //margin bottom 3
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 5, top: 62, bottom: 8),
                    child: SvgPicture.asset(
                      'assets/images/img_airplane_blue_gray_400_01.svg',
                      height: 16,
                      width: 15,
                      // margin: getMargin(left: 5, top: 62, bottom: 8)
                    ),
                  ),
                  Container(
                    height: 6,
                    width: 82,
                    margin: const EdgeInsets.only(left: 41, top: 77, bottom: 4),
                    decoration: BoxDecoration(
                      color: Theme.of(context)
                          .colorScheme
                          .onBackground
                          .withOpacity(.02),
                      borderRadius: BorderRadius.circular(41),
                    ),
                  ),
                  Container(
                    margin:
                        const EdgeInsets.only(left: 13, top: 11, bottom: 59),
                    child: SvgPicture.asset(
                      'assets/images/img_airplane_blue_gray_400_01.svg',
                      height: 16,
                      width: 15,
                      // margin: getMargin(left: 13, top: 11, bottom: 59)
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 29),
            child: SvgPicture.asset(
              'assets/images/img_nikezoommocthe10th1.svg',
              height: 103,
              width: 114,
              alignment: Alignment.topRight,
              // margin: getMargin(right: 29),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 32, right: 131),
            child: SvgPicture.asset(
              'assets/images/img_misc06.svg',
              height: 27,
              width: 27,
              alignment: Alignment.topRight,
              // margin: getMargin(top: 32, right: 131)
            ),
          )
        ],
      ),
    );
  }
}
