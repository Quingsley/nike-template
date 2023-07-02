import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:nike_app/common/cmn_text.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key,
      required this.title,
      required this.imagePath,
      required this.onTap});
  final String title;
  final String imagePath;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap();
      },
      leading: SvgPicture.asset(
        imagePath,
        color: Colors.white,
      ),
      title: ReusableText(
        text: title,
        fSize: 16,
        fFamily: GoogleFonts.raleway().fontFamily,
        fWeight: FontWeight.w500,
        color: Colors.white,
      ),
    );
  }
}
