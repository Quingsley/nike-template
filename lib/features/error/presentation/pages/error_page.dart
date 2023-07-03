import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/widgets/cmn_text.dart';
import 'package:nike_app/features/home/presentation/pages/home_screen.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.message});
  final String message;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.errorContainer,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            message,
            style: GoogleFonts.adventPro(
              color: Theme.of(context).colorScheme.onErrorContainer,
              fontSize: 30,
            ),
          ),
          TextButton(
            onPressed: () {
              context.go(HomeScreen.route);
            },
            child: ReusableText(
              text: 'Go back Home',
              fSize: 20,
              color: Theme.of(context).colorScheme.primary.withOpacity(.7),
            ),
          ),
        ],
      ),
    );
  }
}
