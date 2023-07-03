import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/widgets/cmn_text.dart';
import 'package:nike_app/common/widgets/back_button.dart';
import 'package:nike_app/features/home/presentation/pages/home_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static const route = '/settings';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0XFFF7F7F9),
      appBar: AppBar(
        leading: KBackButton(
          onpress: () {
            context.go(HomeScreen.route);
          },
        ),
        title: ReusableText(
          text: 'Settings',
          fSize: 16,
          fFamily: GoogleFonts.raleway().fontFamily,
          fWeight: FontWeight.w600,
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SvgPicture.asset(
          'assets/images/img_settings.svg',
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    );
  }
}
