import 'package:flutter/material.dart';

class OceanViewTitle extends StatelessWidget {
  const OceanViewTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) =>
          const LinearGradient(colors: [Color(0xFF1E7AFF), Color(0xFF009DF5)])
              .createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(
        'OceanView',
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.w700),
      ),
    );
  }
}
