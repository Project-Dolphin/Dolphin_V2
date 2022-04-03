import 'package:flutter/material.dart';

class LunchPage extends StatelessWidget {
  const LunchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
      child: const Center(
        child: Text(
          'Diet Lunch',
        ),
      ),
    );
  }
}
