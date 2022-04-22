import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GradientSvg extends StatelessWidget {
  const GradientSvg({
    required this.svg,
    required this.size,
    required this.gradient,
    Key? key,
  }) : super(key: key);

  final SvgPicture svg;
  final double size;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      child: SizedBox(
        width: size,
        height: size,
        child: svg,
      ),
      shaderCallback: (Rect bounds) {
        final Rect rect = Rect.fromLTRB(0, 0, size, size);

        return gradient.createShader(rect);
      },
    );
  }
}
