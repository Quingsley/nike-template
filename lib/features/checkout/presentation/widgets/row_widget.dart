import 'package:flutter/material.dart';
import 'package:nike_app/common/widgets/cmn_text.dart';

class RowCheckoutWidget extends StatelessWidget {
  const RowCheckoutWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.onPress,
  });
  final String title;
  final IconData icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ReusableText(text: title, fSize: 12),
        const Spacer(),
        IconButton(
          onPressed: onPress,
          icon: Icon(
            icon,
            size: 20,
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
      ],
    );
  }
}
