import 'package:flutter/material.dart';

class KBackButton extends StatelessWidget {
  const KBackButton({
    super.key,
    this.onpress,
  });

  final Function()? onpress;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: const BorderRadius.all(
          Radius.circular(50),
        ),
      ),
      child: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).colorScheme.onSurface,
        ),
        onPressed: onpress,
      ),
    );
  }
}
