import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/widgets/cmn_text.dart';
import 'package:nike_app/common/providers/picked_image_provider.dart';
import 'package:nike_app/features/cart/presentation/pages/cart_screen.dart';
import 'package:nike_app/features/favourite/presentation/pages/favourite_screen.dart';
import 'package:nike_app/features/notifications/presentation/pages/notification_screen.dart';
import 'package:nike_app/features/orders/presentation/pages/orders_screen.dart';
import 'package:nike_app/features/profile/presentation/pages/profile_screen.dart';
import 'package:nike_app/features/settings/presentation/pages/settings_screen.dart';
import 'package:nike_app/features/tabs/presentation/widgets/drawer_item.dart';

class TabsDrawer extends ConsumerWidget {
  const TabsDrawer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var selectedImage = ref.watch(pickedImageProvider);
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 128.0,
              height: 128.0,
              margin: const EdgeInsets.only(
                top: 24.0,
                bottom: 10.0,
              ),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.inversePrimary,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                selectedImage?.path ?? 'assets/images/image_not_found.png',
              ),
            ),
            ReusableText(
              text: 'Jerome Jumah',
              fSize: 20,
              fFamily: GoogleFonts.raleway().fontFamily,
              fWeight: FontWeight.w500,
              color: Colors.white,
            ),
            const SizedBox(
              height: 40,
            ),
            DrawerItem(
                title: 'Profile',
                imagePath: 'assets/images/frame.svg',
                onTap: () {
                  context.go(ProfileScreen.route);
                }),
            DrawerItem(
                title: 'My Cart',
                imagePath: 'assets/images/img_cart.svg',
                onTap: () {
                  context.go(CartScreen.route);
                }),
            DrawerItem(
                title: 'Favourite',
                imagePath: 'assets/images/heart.svg',
                onTap: () {
                  context.go(FavouriteScreen.route);
                }),
            DrawerItem(
                title: 'Notifications',
                imagePath: 'assets/images/notifcation_Icon.svg',
                onTap: () {
                  context.go(NotificationsScreen.route);
                }),
            DrawerItem(
                title: 'Orders',
                imagePath: 'assets/images/orders.svg',
                onTap: () {
                  context.go(OrdersScreen.route);
                }),
            DrawerItem(
                title: 'Settings',
                imagePath: 'assets/images/img_settings.svg',
                onTap: () {
                  context.go(SettingsScreen.route);
                }),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 12,
                color: Colors.white,
              ),
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: const ReusableText(
                  text: 'Made With ❤️| By Jerome',
                  fSize: 12,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
