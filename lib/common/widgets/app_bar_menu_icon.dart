import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_app/common/providers/drawer_controller_provider.dart';

class AppBarMenuIcon extends ConsumerWidget {
  const AppBarMenuIcon({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var advancedDrawerController = ref.watch(drawerControllerProvider);
    return GestureDetector(
      onTap: () => advancedDrawerController.showDrawer(),
      child: Container(
        margin: const EdgeInsets.only(left: 20),
        height: 40,
        child: SvgPicture.asset(
          'assets/images/img_hamburger.svg',
          height: 40,
          // fit: BoxFit.contain,
        ),
      ),
    );
  }
}
