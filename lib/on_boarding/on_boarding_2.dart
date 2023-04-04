import 'package:flutter/material.dart';

import '../components/button.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key, required this.bgColor});
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .1,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Text(
                  'WELCOME TO',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                Positioned(
                  left: 0,
                  top: -10,
                  height: 8,
                  child: Transform.rotate(
                    angle: 4,
                    child: Image.asset(
                      'assets/images/Vector_3.png',
                      color: Colors.white,
                    ),
                  ),
                ),
                Positioned(
                  left: -20,
                  top: -10,
                  child: Image.asset(
                    'assets/images/Vector_3.png',
                    color: Colors.white,
                  ),
                ),
                Positioned(
                  left: -20,
                  top: 10,
                  height: 8,
                  child: Transform.rotate(
                    angle: 75,
                    child: Image.asset(
                      'assets/images/Vector_3.png',
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Text(
              'NIKE',
              style: Theme.of(context).textTheme.displayLarge,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            Image.asset('assets/images/vector_1.png'),
            SizedBox(height: MediaQuery.of(context).size.height * .02),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .5,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        alignment: Alignment.bottomCenter,
                        image: AssetImage('assets/images/Vector_13.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .15,
                    left: MediaQuery.of(context).size.width * .1,
                    child: Image.asset(
                      'assets/images/Vector_6.png',
                      color: Colors.white.withOpacity(.3),
                    ),
                  ),
                  Positioned(
                    top: MediaQuery.of(context).size.height * .15,
                    left: MediaQuery.of(context).size.width * .1,
                    child: Transform.rotate(
                      angle: 75,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 6,
                          ),
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
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/shoe_1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * .05,
                    left: MediaQuery.of(context).size.width * .1,
                    child: Image.asset('assets/images/Ellipse_3.png'),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * .04,
                    left: MediaQuery.of(context).size.width * .3,
                    child: Row(
                      children: [
                        Image.asset('assets/images/Line_33.png'),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset('assets/images/Line_34.png'),
                        const SizedBox(
                          width: 12,
                        ),
                        Image.asset('assets/images/Line_34.png'),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height * .01,
                    right: MediaQuery.of(context).size.width * .1,
                    child: Image.asset('assets/images/Vector_7.png',
                        color: Colors.white.withOpacity(.3)),
                  ),
                  Positioned(
                    bottom: MediaQuery.of(context).size.height * .02,
                    right: MediaQuery.of(context).size.width * .1,
                    child: Image.asset(
                      'assets/images/Vector_8.png',
                      color: Colors.white.withOpacity(.3),
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height * .02,
                    right: MediaQuery.of(context).size.width * .15,
                    child: Image.asset(
                      'assets/images/Vector_8.png',
                      color: Colors.white.withOpacity(.3),
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height * .06,
                    right: MediaQuery.of(context).size.width * .15,
                    child: Image.asset(
                      'assets/images/Vector_14.png',
                      color: Colors.white.withOpacity(.3),
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height * .1,
                    left: MediaQuery.of(context).size.width * .1,
                    child: Image.asset(
                      'assets/images/Vector_10.png',
                      color: Colors.white.withOpacity(.3),
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height * .04,
                    left: MediaQuery.of(context).size.width * .17,
                    child: RotatedBox(
                      quarterTurns: 4,
                      child: Image.asset(
                        'assets/images/Vector_15.png',
                        color: Colors.white.withOpacity(.3),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height * .04,
                    left: MediaQuery.of(context).size.width * .25,
                    child: Image.asset(
                      'assets/images/Vector_15.png',
                      color: Colors.white.withOpacity(.3),
                    ),
                  ),
                  Positioned(
                    bottom: -MediaQuery.of(context).size.height * .04,
                    left: MediaQuery.of(context).size.width * .27,
                    child: Image.asset(
                      'assets/images/Vector_16.png',
                      color: Colors.white.withOpacity(.3),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .12),
            const NikeButton(
              text: 'Get Started',
            ),
          ],
        ),
      ),
    );
  }
}
