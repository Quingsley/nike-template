import 'package:flutter/material.dart';

class BottomBarItem extends StatelessWidget {
  const BottomBarItem(
      {super.key,
      required this.isSelected,
      required this.icon,
      required this.onPress});

  final bool isSelected;
  final IconData icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      highlightColor: Theme.of(context).colorScheme.primary.withOpacity(.2),
      splashColor: Theme.of(context).colorScheme.primary.withOpacity(.1),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(
          100,
        ),
      ),
      onPressed: onPress,
      minWidth: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 32,
            color: isSelected
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.secondary,
          ),
        ],
      ),
    );
  }
}
