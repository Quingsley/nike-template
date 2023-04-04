import 'package:flutter/material.dart';

class OnBoarding1 extends StatelessWidget {
  const OnBoarding1({super.key, required this.bgColor});
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                'assets/images/nike_logo.png',
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            Text(
              'NIKE',
              style: Theme.of(context).textTheme.displayLarge,
            )
          ],
        ),
      ),
    );
  }
}
