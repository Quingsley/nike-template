import 'package:flutter/material.dart';

import 'on_boarding_1.dart';
import 'on_boarding_2.dart';
import 'on_boarding_3.dart';
import 'on_boarding_4.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    const bgColor = Color(0xFF1483C2);
    return PageView(
      controller: controller,
      children: const <Widget>[
        OnBoarding1(bgColor: bgColor),
        OnBoarding2(bgColor: bgColor),
        OnBoarding3(bgColor: bgColor),
        OnBoarding4(bgColor: bgColor)
      ],
    );
  }
}
