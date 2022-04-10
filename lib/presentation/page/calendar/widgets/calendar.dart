import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  Widget _availableDates(int index) {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: (context, state) {
        final today = state is CampusEventLoaded ? state.today : DateTime.now();
        final eventList =
            state is CampusEventLoaded ? state.calendarData[index].data : [];

        return Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: index == today.day
                    ? const Color(0xFF0081FF)
                    : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Text(
                '$index',
                style: textStyleNormal(const Color(0xFF353B45), 16),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ...eventList.map(
                  (event) => Container(
                    padding: const EdgeInsets.only(right: 2),
                    height: 5,
                    width: 5,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFBBEBEC),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Widget _date(int index) {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: (context, state) {
        final today = state is CampusEventLoaded ? state.today : DateTime.now();

        int _firstDay = today.weekday - (today.day % 7 - 1);
        index -= _firstDay - 1;

        return (index > 0 &&
                index <= context.read<CampusEventBloc>().endDays(today))
            ? _availableDates(index)
            : const SizedBox();
      },
    );
  }

  Widget _calendar() {
    return Column(
      children: [
        BlocBuilder<CampusEventBloc, CampusEventState>(
          builder: (context, state) {
            final today =
                state is CampusEventLoaded ? state.today : DateTime.now();

            return Row(
              children: [
                Text('${today.year}'),
                Text('${today.month}'),
                Text('${today.day}'),
                Text(DateFormat.E('ko_KR').format(today)),
              ],
            );
          },
        ),
        Row(
          children: [
            ...['월', '화', '수', '목', '금', '토', '일'].map((e) {
              return Expanded(child: Text(e, textAlign: TextAlign.center));
            }),
          ],
        ),
        Flexible(
          child: GridView.count(
            primary: false,
            crossAxisCount: 7,
            children: List.generate(42, (index) {
              return _date(index);
            }),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    PageController _controller = PageController(initialPage: 0, keepPage: true);

    return _calendar();
  }
}

// import 'package:flutter/material.dart';

// class CalendarWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 27, vertical: 12),
//       child: Column(
//         children: [_buildWeekDayHeader()],
//       ),
//     );
//   }

//   _buildWeekDayHeader() {
//     return Row(
//       children: [
//         ...['월', '화', '수', '목', '금', '토', '일'].map((e) {
//           return Expanded(child: Text(e, textAlign: TextAlign.center));
//         }),
//       ],
//     );
//   }
// }
