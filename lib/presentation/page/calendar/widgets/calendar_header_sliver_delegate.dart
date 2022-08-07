import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';
import 'package:oceanview/presentation/page/calendar/dialog/calendar_dialog.dart';

class CalendarHeaderSliverDelegate extends SliverPersistentHeaderDelegate {
  CalendarHeaderSliverDelegate({
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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: minExtent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: (MediaQuery.of(context).size.width * 0.92) / 2,
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 100),
                      alignment: Alignment.lerp(
                        Alignment.centerLeft,
                        Alignment.centerRight,
                        maxScroll > 0.15 ? 1 : maxScroll,
                      ),
                      padding: EdgeInsets.lerp(
                        const EdgeInsets.symmetric(horizontal: 6),
                        const EdgeInsets.all(0),
                        maxScroll > 0.15 ? 1 : maxScroll,
                      ),
                      // padding: EdgeInsets.lerp(
                      //   const EdgeInsets.symmetric(horizontal: 6),
                      //   const EdgeInsets.all(1),
                      //   maxScroll > 0.4 ? 1 : maxScroll,
                      // ),
                      child: Text(
                        '일정',
                        style: TextStyle.lerp(
                          textStyleBold(
                            Theme.of(context).colorScheme.onPrimary,
                            24,
                          ),
                          textStyleBold(
                            Theme.of(context).colorScheme.onPrimary,
                            16,
                          ),
                          maxScroll > 0.15 ? 1 : maxScroll,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        DateFormat('M.d EEEE', 'ko_KR').format(DateTime.now()),
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
                        child: BlocBuilder<HomeDataBloc, HomeDataState>(
                          builder: (context, state) {
                            final String displayText =
                                state is HomeDataLoaded ? state.dateType : '평일';

                            return Text(
                              displayText,
                              style: textStyleNormal(
                                Theme.of(context).colorScheme.primary,
                                11,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Builder(builder: (context) {
              if (shrinkOffset / maxExtent < 0.02) {
                return Expanded(
                  child: BlocBuilder<CampusEventBloc, CampusEventState>(
                    builder: (context, state) {
                      final today = state is CampusEventLoaded
                          ? state.selectedDay
                          : DateTime.now();

                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '${today.year}',
                                style: textStyleNormal(
                                  Theme.of(context).colorScheme.onSecondary,
                                  20,
                                ),
                              ),
                              const SizedBox(width: 8),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () => context
                                        .read<CampusEventBloc>()
                                        .add(MonthChanged(month: -1)),
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      child: R.image.icon_chevron_up
                                          .svgPicture(width: 10, height: 5),
                                    ),
                                  ),
                                  Container(
                                    alignment: Alignment.center,
                                    width: 40,
                                    height: 40,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).canvasColor,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      '${today.month}',
                                      style: textStyleNormal(
                                        Theme.of(context)
                                            .colorScheme
                                            .onSecondary,
                                        20,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => context
                                        .read<CampusEventBloc>()
                                        .add(MonthChanged(month: 1)),
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      color: Theme.of(context)
                                          .scaffoldBackgroundColor,
                                      child: R.image.icon_chevron_down
                                          .svgPicture(width: 10, height: 5),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(width: 8),
                              Text(
                                '${today.day}',
                                style: textStyleNormal(
                                  Theme.of(context).colorScheme.onSecondary,
                                  20,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Text(
                                DateFormat.E('ko_KR').format(today) + '요일',
                                style: textStyleNormal(
                                  Theme.of(context).colorScheme.onSecondary,
                                  18,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: state is CampusEventLoaded
                                    ? () => Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                CalendarDialog(
                                              eventList: state.eventList,
                                            ),
                                          ),
                                        )
                                    : null,
                                child: R.image.icon_magnify
                                    .svgPictureSize(size: 17),
                              ),
                              const SizedBox(width: 30),
                              R.image.icon_list_bullet.svgPictureSize(size: 30),
                            ],
                          ),
                        ],
                      );
                    },
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
  bool shouldRebuild(CalendarHeaderSliverDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight;
  }
}
