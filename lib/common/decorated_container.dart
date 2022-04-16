import 'package:flutter/material.dart';

class DecoratedContainer extends StatelessWidget {
  const DecoratedContainer({
    Key? key,
    required this.child,
    this.width,
    this.height,
  }) : super(key: key);
  final Widget child;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(15),
        shape: BoxShape.rectangle,
      ),
      width: width,
      height: height,
      child: child,
    );
  }
}
