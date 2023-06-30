import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nike_app/common/providers/location_service_provider.dart';
import 'package:nike_app/features/tabs/presentation/providers/address_state_provider.dart';
import 'package:nike_app/features/tabs/presentation/providers/tabs_provider.dart';
import 'package:nike_app/features/tabs/presentation/widgets/bottom_bar_item.dart';
import 'package:nike_app/utils/utils.dart';

class TabNavigation extends ConsumerStatefulWidget {
  const TabNavigation({required this.navigationShell, Key? key})
      : super(key: key ?? const ValueKey<String>('ScaffoldWithNavBar'));
  final StatefulNavigationShell navigationShell;
  static const String route = '/tabs';

  @override
  ConsumerState<TabNavigation> createState() => _TabNavigationState();
}

class _TabNavigationState extends ConsumerState<TabNavigation> {
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
    return Scaffold(
      body: widget.navigationShell,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        child: SvgPicture.asset('assets/images/img_cart.svg'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: SizedBox(
          height: 50,
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
                    icon: Icons.home_outlined,
                    onPress: () {
                      _goBranch(TabScreens.home.index);
                    },
                  ),
                  BottomBarItem(
                    icon: Icons.favorite_outline_outlined,
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
                    icon: Icons.notifications_outlined,
                    onPress: () {
                      _goBranch(TabScreens.notification.index);
                    },
                    isSelected: widget.navigationShell.currentIndex ==
                            TabScreens.notification.index
                        ? true
                        : false,
                  ),
                  BottomBarItem(
                      icon: Icons.account_box_outlined,
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
