import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';
import 'package:oceanview/presentation/page/calendar/dialog/calendar_dialog.dart';

class CalendarTabSliverDelegate extends SliverPersistentHeaderDelegate {
  CalendarTabSliverDelegate({
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
    return SizedBox.expand(
      child: Container(
        color: Theme.of(context).scaffoldBackgroundColor,
        child: BlocBuilder<CampusEventBloc, CampusEventState>(
          builder: (context, state) {
            final today =
                state is CampusEventLoaded ? state.selectedDay : DateTime.now();

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
                          child: R.image.icon_chevron_up
                              .svgPicture(width: 10, height: 5),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 4),
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
                              Theme.of(context).colorScheme.onSecondary,
                              20,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () => context
                              .read<CampusEventBloc>()
                              .add(MonthChanged(month: 1)),
                          child: R.image.icon_chevron_down
                              .svgPicture(width: 10, height: 5),
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
                                  builder: (context) => CalendarDialog(
                                    eventList: state.eventList,
                                  ),
                                ),
                              )
                          : null,
                      child: R.image.icon_magnify.svgPictureSize(size: 17),
                    ),
                    const SizedBox(width: 30),
                    R.image.icon_list_bullet.svgPictureSize(size: 30),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  bool shouldRebuild(CalendarTabSliverDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight;
  }
}
