import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import './home_screen.dart';
import './favorite_screen.dart';
import './lock_screen.dart';
import './notifications_screen.dart';
import './profile_screen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;

  final screens = [
    const MyHomeScreen(),
    const FavScreen(),
    const LockScreen(),
    const NotificationsScreen(),
    const ProfieScreen()
  ];
  final items = [
    const Icon(Icons.home),
    const Icon(Icons.favorite),
    const Icon(Icons.lock),
    const Icon(Icons.notifications),
    const Icon(Icons.person)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Theme(
        data: Theme.of(context)
            .copyWith(iconTheme: const IconThemeData(color: Colors.grey)),
        child: CurvedNavigationBar(
          height: 60,
          key: navigationKey,
          color: Colors.white,
          buttonBackgroundColor: Theme.of(context).primaryColor,
          backgroundColor: Colors.transparent,
          items: items,
          index: index,
          onTap: (index) {
            setState(() {
              this.index = index;
            });
          },
        ),
      ),
      body: screens[index],
    );
  }
}
