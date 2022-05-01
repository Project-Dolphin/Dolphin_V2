import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';

class CalendarDetailWidget extends StatelessWidget {
  const CalendarDetailWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: ((context, state) {
        if (state is CampusEventLoaded &&
            state.calendarData[state.selectedDay.day].data.isNotEmpty) {
          return DecoratedContainer(
            // ignore: avoid-returning-widgets
            child: Column(
              children: [
                ...state.calendarData[state.selectedDay.day].data.map((detail) {
                  bool isFirst = state.calendarData[state.selectedDay.day].data
                          .indexOf(detail) ==
                      0;

                  return Padding(
                    padding: EdgeInsets.only(top: isFirst ? 0 : 20),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 1),
                          width: 3,
                          height: 3,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFBBEBEC),
                          ),
                        ),
                        const SizedBox(width: 11),
                        Expanded(
                          child: Text(
                            detail.content,
                            overflow: TextOverflow.ellipsis,
                            style: textStyleBold(
                              detail.holiday
                                  ? Colors.red
                                  : Theme.of(context).colorScheme.onPrimary,
                              14,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
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
