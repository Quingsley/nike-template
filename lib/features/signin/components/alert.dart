import 'package:flutter/material.dart';
import 'subtitle.dart';
import 'title.dart';

Future<void> openAlert(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            icon: Icon(
              Icons.mark_email_unread_sharp,
              color: Theme.of(context).colorScheme.primary,
              size: 32,
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
