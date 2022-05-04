import 'package:flutter/material.dart';

class ShadedDecoratedContainer extends StatelessWidget {
  const ShadedDecoratedContainer({
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
      margin: EdgeInsets.only(top: 5),
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(15),
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF3E9EF6).withOpacity(.4), blurRadius: 8,
            // offset: const Offset(5, 5),
          ),
        ],
      ),
      width: width,
      height: height,
      child: child,
    );
  }
}
