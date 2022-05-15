import 'package:flutter/material.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 0.5,
          color: Theme.of(context).colorScheme.surface,
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
