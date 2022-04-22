import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';
import 'package:oceanview/presentation/page/calendar/dialog/calendar_dialog.dart';

import 'widgets/calendar.dart';
import 'widgets/calendar_detail.dart';

class CampusEventPage extends StatelessWidget {
  const CampusEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: context.read<DashBoardBloc>().campusEventScrollController,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            BlocBuilder<CampusEventBloc, CampusEventState>(
              builder: (context, state) {
                final today = state is CampusEventLoaded
                    ? state.selectedDay
                    : DateTime.now();

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${today.year}',
                          style: textStyleNormal(const Color(0xFF353B45), 20),
                        ),
                        const SizedBox(width: 8),
                        Column(
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
                                    const Color(0xFF353B45), 20),
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
                          style: textStyleNormal(const Color(0xFF353B45), 20),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          DateFormat.E('ko_KR').format(today) + '요일',
                          style: textStyleNormal(const Color(0xFF353B45), 18),
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
            const SizedBox(height: 13),
            const CalendarWidget(),
            const SizedBox(height: 12),
            const CalendarDetailWidget(),
          ],
        ),
      ),
    );
  }
}
