import 'package:flutter/material.dart';

class DrawerNavigator extends StatelessWidget {
  const DrawerNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(color: Colors.amber),
          child: Text('Welcome..'),
        ),
        ListTile(
          title: const Text('Item 1'),
          onTap: () {},
        )
      ],
    );
  }
}
