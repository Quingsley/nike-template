import 'package:flutter/material.dart';

class LineSeparator extends StatelessWidget {
  const LineSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .5,
      child: Row(
        children: List.generate(
          110,
          (index) => index.isEven
              ? Container(
                  height: 1,
                  width: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: const Color(0xFF707B81),
                  ),
                )
              : Container(
                  height: 1,
                  width: 3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                  ),
                ),
        ),
      ),
    );
  }
}
