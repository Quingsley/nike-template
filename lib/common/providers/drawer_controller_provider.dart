import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

part 'drawer_controller_provider.g.dart';

@Riverpod(keepAlive: true)
AdvancedDrawerController drawerController(DrawerControllerRef ref) {
  return AdvancedDrawerController();
}
