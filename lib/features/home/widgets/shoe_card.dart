import 'package:flutter/material.dart';

class ShoeCard extends StatelessWidget {
  final String text;
  final String text1;
  final String image;
  // final String image1;
  const ShoeCard({
    super.key,
    required this.text,
    required this.text1,
    required this.image,
    // required this.image1
  });

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Row(
      children: [
        Column(
          children: [
            Text(text),
            Text(
              text1,
              style: const TextStyle(fontSize: 35, color: Colors.purple),
            )
          ],
        ),
        Expanded(
          child: Stack(
            children: [
              Image.asset('assets/images/$image'),
              // Positioned(child: Image.asset('assets/images/$image1'))
            ],
          ),
        )
      ],
    )

        //     Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //   children: [
        //     Expanded(
        //       child: Column(
        //         children: [Text(text), Text(text1)],
        //       ),
        //     ),
        //     Image.asset('assets/images/$image')
        //   ],
        // )
        );
  }
}
