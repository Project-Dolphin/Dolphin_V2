import 'package:flutter/material.dart';

class MorningPage extends StatelessWidget {
  const MorningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.yellow,
      child: const Center(
        child: Text(
          'Diet Morning',
        ),
      ),
    );
  }
}
