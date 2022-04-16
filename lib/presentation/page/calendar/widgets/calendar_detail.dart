import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';

class CalendarDetailWidget extends StatelessWidget {
  const CalendarDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedContainer(
      // ignore: avoid-returning-widgets
      child: _buildSelectedDate(),
    );
  }

  Widget _buildSelectedDate() {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: ((context, state) {
        if (state is CampusEventLoaded) {
          return Column(
            children: [
              ...state.calendarData[state.selectedDay.day].data.map((detail) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 9),
                  child: Row(
                    children: [
                      Text(
                        detail.content,
                        style: textStyleBold(
                          detail.holiday ? Colors.red : const Color(0xFF353B45),
                          14,
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ],
          );
          // return Padding(
          //   padding: const EdgeInsets.symmetric(vertical: 9),
          //   child: Column(
          //     children: [
          //       ...state.calendarData[state.selectedDay.day].data.map((detail) {
          //         return Padding(
          //           padding: const EdgeInsets.symmetric(vertical: 9),
          //           child: Row(
          //             children: [
          //               Text(
          //                 detail.content,
          //                 style: textStyleBold(
          //                   detail.holiday
          //                       ? Colors.red
          //                       : const Color(0xFF353B45),
          //                   14,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         );
          //       }),
          //     ],
          //   ),
          // );
        }

        return const SizedBox();
      }),
    );
  }
}
