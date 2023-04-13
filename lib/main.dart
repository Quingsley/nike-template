import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'common/pages.dart';
import 'features/auth/pages/forgot_password.dart';
import 'features/auth/pages/otp_verification.dart';
import 'features/auth/pages/sign_in.dart';
import 'features/auth/pages/sign_up.dart';
import 'features/welcome/on_boarding_screen.dart';
import 'features/details/pages/detail_screen.dart';
import 'themes/theme.dart';

void main() {
  runApp(const MyApp());
}

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: "/${Screens.signin.name}",
      builder: (context, state) => const SignIn(),
    ),
    GoRoute(
      path: "/${Screens.signup.name}",
      builder: (context, state) => const SignUp(),
    ),
    GoRoute(
      path: "/${Screens.forgotPassword.name}",
      builder: (context, state) => const ForgotPassword(),
    ),
    GoRoute(
      path: "/${Screens.otp.name}",
      builder: (context, state) => const OTPPage(),
    ),
    GoRoute(
      path: "/${Screens.shoeDetail.name}",
      builder: (context, state) => const ShoeDetail(),
    ),
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
