import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/widgets/cmn_text.dart';
import 'package:nike_app/common/widgets/custom_button.dart';
import 'package:nike_app/features/home/presentation/pages/home_screen.dart';

class SuccessPopup extends StatelessWidget {
  const SuccessPopup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .6,
      width: MediaQuery.sizeOf(context).width * .8,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 200,
            width: 200,
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: const Color(0XFFDFEFFF),
              borderRadius: BorderRadius.circular(100),
              image: const DecorationImage(
                image: AssetImage('assets/images/img_image50.png'),
                fit: BoxFit.scaleDown,
                scale: 2,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ReusableText(
            text: 'Your Payment Is\nSuccessful',
            fSize: 20,
            textAlign: TextAlign.center,
            fFamily: GoogleFonts.raleway().fontFamily,
            fWeight: FontWeight.w500,
          ),
          const SizedBox(height: 20),
          CButton(
            text: 'Back To Shopping',
            hPadding: 12,
            onpressed: () {
              context.go(HomeScreen.route);
            },
          )
        ],
      ),
    );
  }
}
