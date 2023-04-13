import 'package:flutter/material.dart';

class KBackButton extends StatelessWidget {
  const KBackButton({
    super.key,
    this.onpress,
    this.color,
    this.margin,
  });

  final Function()? onpress;
  final Color? color;
  final double? margin;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: margin ?? 0),
      decoration: BoxDecoration(
        color: color ?? Theme.of(context).colorScheme.background,
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
