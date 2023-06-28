import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/features/auth/presentation/pages/forgot_password.dart';
import 'package:nike_app/features/auth/presentation/pages/otp_verification.dart';
import 'package:nike_app/features/auth/presentation/pages/sign_in.dart';
import 'package:nike_app/features/auth/presentation/pages/sign_up.dart';
import 'package:nike_app/features/cart/presentation/pages/cart_screen.dart';
import 'package:nike_app/features/favourite/presentation/pages/favourite_screen.dart';
import 'package:nike_app/features/home/presentation/pages/home_screen.dart';
import 'package:nike_app/features/notifications/presentation/pages/notification_screen.dart';
import 'package:nike_app/features/profile/presentation/pages/profile_Screen.dart';
import 'package:nike_app/features/shoe-details/presentation/pages/detail_screen.dart';
import 'package:nike_app/features/onboarding/presentation/pages/on_boarding_screen.dart';
import 'package:nike_app/features/tabs/presentation/pages/tab_navigation.dart';

class AppRoutes {
  static final GlobalKey<NavigatorState> _rootNavigator = GlobalKey();
  static final GlobalKey<NavigatorState> _shellNavigatorHomeKey =
      GlobalKey<NavigatorState>(debugLabel: 'home');
  static final GlobalKey<NavigatorState> _shellNavigatorFavouriteKey =
      GlobalKey<NavigatorState>(debugLabel: 'favourites');
  static final GlobalKey<NavigatorState> _shellNavigatorNotificationKey =
      GlobalKey<NavigatorState>(debugLabel: 'notification');
  static final GlobalKey<NavigatorState> _shellNavigatorProfileKey =
      GlobalKey<NavigatorState>(debugLabel: 'profile');
  static final router = GoRouter(
    navigatorKey: AppRoutes._rootNavigator,
    initialLocation: OnBoardingScreen.route,
    errorBuilder: (context, state) => Scaffold(
      backgroundColor: Theme.of(context).colorScheme.errorContainer,
      body: Center(
        child: Text(
          state.error.toString(),
          style: GoogleFonts.adventPro(
            color: Theme.of(context).colorScheme.onErrorContainer,
            fontSize: 30,
          ),
        ),
      ),
    ),
    routes: [
      GoRoute(
        path: OnBoardingScreen.route,
        builder: (context, state) => const OnBoardingScreen(),
      ),
      GoRoute(
        path: SignIn.route,
        builder: (context, state) => const SignIn(),
      ),
      GoRoute(
        path: SignUp.route,
        builder: (context, state) => const SignUp(),
      ),
      GoRoute(
        path: ForgotPassword.route,
        builder: (context, state) => const ForgotPassword(),
      ),
      GoRoute(
        path: OTPPage.route,
        builder: (context, state) => const OTPPage(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) =>
            TabNavigation(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            navigatorKey: AppRoutes._shellNavigatorHomeKey,
            routes: [
              GoRoute(
                  path: HomeScreen.route,
                  builder: (context, state) => const HomeScreen(
                        detailsPath: '/home/shoe-detail',
                      ),
                  routes: [
                    GoRoute(
                      path: ShoeDetail.route,
                      builder: (context, state) => const ShoeDetail(),
                    ),
                  ]),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: AppRoutes._shellNavigatorFavouriteKey,
            routes: [
              GoRoute(
                path: FavouriteScreen.route,
                builder: (context, state) => const FavouriteScreen(
                  detailsPath: '/favourite/shoe-detail',
                ),
                routes: [
                  GoRoute(
                    path: ShoeDetail.route,
                    builder: (context, state) => const ShoeDetail(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: AppRoutes._shellNavigatorNotificationKey,
            routes: [
              GoRoute(
                path: NotificationsScreen.route,
                builder: (context, state) => const NotificationsScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            navigatorKey: AppRoutes._shellNavigatorProfileKey,
            routes: [
              GoRoute(
                path: ProfileScreen.route,
                builder: (context, state) => const ProfileScreen(),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        path: CartScreen.route,
        builder: (context, state) => const CartScreen(),
      ),
    ],
  );
}