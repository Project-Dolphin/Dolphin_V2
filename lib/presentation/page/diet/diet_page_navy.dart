import 'package:flutter/material.dart';

class NavyPage extends StatelessWidget {
  const NavyPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
      child: const Center(
        child: Text(
          'Diet Navy',
        ),
      ),
    );
  }
}
