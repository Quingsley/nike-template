import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nike_app/routes/app_routes.dart';
import 'themes/theme.dart';

void main() {
  runApp(const ProviderScope(child: NikeStoreApp()));
}

class NikeStoreApp extends StatelessWidget {
  const NikeStoreApp({Key? key}) : super(key: key);

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
