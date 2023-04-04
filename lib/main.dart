import 'package:flutter/material.dart';
import 'package:nike_app/themes/theme.dart';
import './on_boarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const nikeTheme = NikeTheme();
    return MaterialApp(
      theme: nikeTheme.toThemeData(),
      home: const OnBoardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
