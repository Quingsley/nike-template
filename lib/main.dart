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

class NikeStoreApp extends ConsumerWidget {
  const NikeStoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    const nikeTheme = NikeTheme();
    var router = ref.watch(goRouterProvider);
    return MaterialApp.router(
      theme: nikeTheme.toThemeData(),
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
