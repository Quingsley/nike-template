import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/common/constants/app_styles.dart';
import 'package:nike_app/common/providers/drawer_controller_provider.dart';
import 'package:nike_app/common/providers/location_service_provider.dart';
import 'package:nike_app/features/tabs/presentation/providers/address_state_provider.dart';
import 'package:nike_app/features/tabs/presentation/providers/tabs_provider.dart';
import 'package:nike_app/features/tabs/presentation/widgets/bottom_bar_item.dart';
import 'package:nike_app/features/tabs/presentation/widgets/drawer.dart';
import 'package:nike_app/utils/utils.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class TabNavigation extends ConsumerStatefulWidget {
  const TabNavigation({required this.navigationShell, Key? key})
      : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));
  final StatefulNavigationShell navigationShell;
  static const String route = '/tabs';

  @override
  ConsumerState<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends ConsumerState<TabNavigation> {
  Timer? rotationTimer;
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero, () async {
      var location = ref.watch(locationServiceProvider);
      var setAddress = ref.watch(addressInfoProvider);
      var lcData = await ref
          .watch(tabViewModelProvider(locationService: location))
          .getUsersLocation();
      if (lcData != null) {
        setAddress.address = lcData;
      }
    });
  }

  void _goBranch(int index) {
    widget.navigationShell.goBranch(
      index,
      initialLocation: index == widget.navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    var advancedDrawerController = ref.watch(drawerControllerProvider);
    return AdvancedDrawer(
      openRatio: .5,
      drawer: const TabsDrawer(),
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
      controller: advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      // openScale: 1.0,
      disabledGestures: false,
      childDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),

      child: Scaffold(
        drawer: const TabsDrawer(),
        body: widget.navigationShell,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: AppStyles.blueLightShade,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
          child: SvgPicture.asset('assets/images/img_cart.svg'),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 10,
          height: 48,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BottomBarItem(
                    isSelected: widget.navigationShell.currentIndex ==
                            TabScreens.home.index
                        ? true
                        : false,
                    imagePath: 'assets/images/home-2.svg',
                    onPress: () {
                      _goBranch(TabScreens.home.index);
                    },
                  ),
                  BottomBarItem(
                    imagePath: 'assets/images/heart.svg',
                    onPress: () {
                      _goBranch(TabScreens.favourite.index);
                    },
                    isSelected: widget.navigationShell.currentIndex ==
                            TabScreens.favourite.index
                        ? true
                        : false,
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BottomBarItem(
                    imagePath: 'assets/images/notifcation_Icon.svg',
                    onPress: () {
                      _goBranch(TabScreens.notification.index);
                    },
                    isSelected: widget.navigationShell.currentIndex ==
                            TabScreens.notification.index
                        ? true
                        : false,
                  ),
                  BottomBarItem(
                      imagePath: 'assets/images/frame.svg',
                      isSelected: widget.navigationShell.currentIndex ==
                              TabScreens.profile.index
                          ? true
                          : false,
                      onPress: () {
                        _goBranch(TabScreens.profile.index);
                      }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
