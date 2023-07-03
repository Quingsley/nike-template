import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'subtitle.dart';
import 'title.dart';

Future<void> openAlert(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            icon: Container(
              width: 32, //! FIX
              constraints: const BoxConstraints(
                minWidth: 32,
              ),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: BorderRadius.circular(200),
              ),
              child: SvgPicture.asset(
                'assets/images/img_mail.svg',
              ),
            ),
            title: const KTitle(
              text: 'Check Your Email',
              fSize: 16,
            ),
            content: const SubTitle(
              text: 'We Have Send Password Recovery Code In Your Email',
              fSize: 12,
            ),
          ));
}
