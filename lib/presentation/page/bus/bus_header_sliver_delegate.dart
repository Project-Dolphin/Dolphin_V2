import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';

class BusHeaderSliverDelegate extends SliverPersistentHeaderDelegate {
  BusHeaderSliverDelegate({
    required this.height,
  });
  final double height;
  @override
  double get minExtent => height;
  @override
  double get maxExtent => height + 20;
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final double maxScroll = shrinkOffset;

    return SizedBox.expand(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 100),
          padding: EdgeInsets.lerp(
            const EdgeInsets.symmetric(horizontal: 6),
            const EdgeInsets.all(1),
            maxScroll > 0.4 ? 1 : maxScroll,
          ),
          alignment: Alignment.lerp(
            Alignment.centerLeft,
            Alignment.center,
            maxScroll > 0.4 ? 1 : maxScroll,
          ),
          child: Text(
            '버스',
            style: TextStyle.lerp(
              textStyleBold(
                Theme.of(context).colorScheme.onPrimary,
                24,
              ),
              textStyleBold(
                Theme.of(context).colorScheme.onPrimary,
                16,
              ),
              maxScroll > 0.4 ? 1 : maxScroll,
            ),
          ),
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(BusHeaderSliverDelegate oldDelegate) {
    return true;
  }
}
