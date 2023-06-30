import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nike_app/routes/app_routes.dart';
import 'themes/theme.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Required by FlutterConfig
  await FlutterConfig.loadEnvVariables();
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
