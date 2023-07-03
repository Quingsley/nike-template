import 'package:flutter/material.dart';

class NikeButton extends StatelessWidget {
  const NikeButton({super.key, required this.text, this.onPress});
  final String text;
  final Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      style: ElevatedButton.styleFrom(
        foregroundColor: Theme.of(context).colorScheme.secondary,
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * .3,
          vertical: 20,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(text),
    );
  }
}
