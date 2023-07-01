import 'package:flutter/material.dart';
import 'package:nike_app/common/cmn_text.dart';

class AccountDetailsTile extends StatelessWidget {
  const AccountDetailsTile(
      {super.key, this.title, required this.isVerified, this.leadingWidget});
  final String? title;
  final Widget? leadingWidget;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4, bottom: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        leading: leadingWidget ??
            ReusableText(
              text: title!,
              fSize: 14,
              color: Theme.of(context).colorScheme.secondary,
              fWeight: FontWeight.w400,
            ),
        trailing: Icon(
          isVerified ? Icons.check : Icons.clear,
          color: isVerified
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.error,
        ),
      ),
    );
  }
}
