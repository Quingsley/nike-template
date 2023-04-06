import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'features/signin/pages/sign_in.dart';
import 'features/welcome/on_boarding_screen.dart';
import 'themes/theme.dart';

void main() {
  runApp(const MyApp());
}

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => const SignIn(),
    )
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const nikeTheme = NikeTheme();
    return MaterialApp.router(
      theme: nikeTheme.toThemeData(),
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
