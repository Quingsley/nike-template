import 'package:flutter/material.dart';
import 'package:nike_app/routes/app_routes.dart';
import 'themes/theme.dart';

void main() {
  runApp(const MyApp());
}

// GoRouter configuration
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const nikeTheme = NikeTheme();
    return MaterialApp.router(
      theme: nikeTheme.toThemeData(),
      routerConfig: AppRoutes.router,
      debugShowCheckedModeBanner: false,
    );
  }
}
