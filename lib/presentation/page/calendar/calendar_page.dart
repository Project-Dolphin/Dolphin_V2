import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';

import 'widgets/calendar.dart';
import 'widgets/calendar_detail.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<CampusEventBloc, CampusEventState>(
          builder: (context, state) {
            final today =
                state is CampusEventLoaded ? state.selectedDay : DateTime.now();

            return Row(
              children: [
                Text(
                  '${today.year}',
                  style: textStyleNormal(const Color(0xFF353B45), 20),
                ),
                const SizedBox(width: 8),
                Text(
                  '${today.month}',
                  style: textStyleNormal(const Color(0xFF353B45), 20),
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
            );
          },
        ),
        const SizedBox(height: 13),
        const CalendarWidget(),
        const SizedBox(height: 12),
        const CalendarDetailWidget(),
      ],
    );
    //   return BlocBuilder<CampusEventBloc, CampusEventState>(
    //     builder: ((context, state) {
    //       if (state is CampusEventLoaded) {
    //         return SingleChildScrollView(
    //           child: Column(
    //             children: [
    //               CalendarWidget(),
    //             ],
    //           ),
    //         );
    //       }

    //       return const CircularProgressIndicator();
    //     }),
    //   );
  }
}
