import 'package:flutter/material.dart';

import 'components/on_boarding_2.dart';
import 'components/on_boarding_3.dart';
import 'components/on_boarding_4.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _initialPage = 0;
  void onPageChanged(int value) {
    setState(() {
      _initialPage = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController(initialPage: _initialPage);
    const bgColor = Color(0xFF1483C2);
    return PageView(
      controller: controller,
      onPageChanged: onPageChanged,
      children: <Widget>[
        // const OnBoarding1(
        //   bgColor: bgColor,
        // ),
        const OnBoarding2(bgColor: bgColor),
        OnBoarding3(
          bgColor: bgColor,
          curretPageNumber: _initialPage,
          controller: controller,
        ),
        const OnBoarding4(bgColor: bgColor)
      ],
    );
  }
}
