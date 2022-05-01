import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';
import 'package:oceanview/core/config/r.dart';

import 'diet_kind_circle_button.dart';
import 'diet_kind_circle_text.dart';

class DietHeaderSliverDelegate extends SliverPersistentHeaderDelegate {
  DietHeaderSliverDelegate({
    required this.minHeight,
    required this.maxHeight,
  });
  final double minHeight;
  final double maxHeight;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => maxHeight;
  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final double maxScroll = shrinkOffset / maxExtent;

    return SizedBox.expand(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
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
                      '식단',
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
                Builder(builder: (context) {
                  if (shrinkOffset / maxExtent < 0.4) {
                    return Positioned(
                      // top: minExtent / 2,
                      right: 0,
                      child: Row(
                        children: [
                          Text(
                            DateFormat('M.d EEEE', 'ko_KR')
                                .format(DateTime.now()),
                            style: textStyleNormal(
                              Theme.of(context).colorScheme.onPrimary,
                              12,
                            ),
                          ),
                          const SizedBox(width: 6),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 4,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Theme.of(context).canvasColor,
                            ),
                            child: Text(
                              '사라져야함',
                              style: textStyleNormal(
                                Theme.of(context).colorScheme.primary,
                                11,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  }

                  return const SizedBox();
                }),
              ],
            ),
            Builder(builder: (context) {
              if (shrinkOffset / maxExtent < 0.4) {
                return Expanded(
                  child: Row(
                    children: [
                      const DietKindCircleButton(dietTab: DietTab.morning),
                      const DietKindCircleButton(dietTab: DietTab.lunch),
                      const DietKindCircleButton(dietTab: DietTab.dinner),
                      Expanded(
                        child: Center(
                          child: Container(
                            width: 1,
                            color: Theme.of(context).primaryColor,
                            height: 20,
                          ),
                        ),
                      ),
                      const DietKindCircleText(dietTab: DietTab.dorm),
                      const SizedBox(width: 20),
                      const DietKindCircleText(dietTab: DietTab.navy),
                    ],
                  ),
                );
              }

              return const SizedBox();
            }),
          ],
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(DietHeaderSliverDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight;
  }
}
