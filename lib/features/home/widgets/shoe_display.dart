import 'package:flutter/material.dart';

class ShoeDisplay extends StatelessWidget {
  final String image;
  final String text1;
  final String text2;
  final String cash;
  final Icon icon;

  const ShoeDisplay(
      {super.key,
      required this.image,
      required this.text1,
      required this.text2,
      required this.cash,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(9.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/$image'),

                    // .asset('assets/images/$image'),
                    Text(
                      text1,
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                    Text(
                      text2,
                      style:
                          TextStyle(color: Colors.grey.shade900, fontSize: 20),
                    ),
                    Text(
                      cash,
                      style: const TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          top: 20,
          left: 24,
          child: icon,
        ),
        Positioned(
          top: 229,
          left: 142,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomRight: Radius.circular(7)),
              color: Theme.of(context).primaryColor,
            ),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
          ),
        )
      ],
    );
  }
}
