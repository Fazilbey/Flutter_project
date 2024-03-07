import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {
            Scaffold.of(context).openDrawer();
          },
          child: Icon(Icons.menu),
        )
      ],
    );
  }
}
