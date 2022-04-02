import 'package:flutter/material.dart';

class DietPage extends StatelessWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
      child: const Center(
        child: Text(
          'Diet View',
        ),
      ),
    );
  }
}
