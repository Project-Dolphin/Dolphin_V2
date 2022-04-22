import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';

class CalendarWidget extends StatelessWidget {
  const CalendarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.white),
      child: Column(
        children: [
          const SizedBox(height: 12),
          Row(
            children: [
              ...['일', '월', '화', '수', '목', '금', '토'].map((e) {
                return Expanded(
                  child: Text(
                    e,
                    style: textStyleNormal(const Color(0xFF0081FF), 12),
                    textAlign: TextAlign.center,
                  ),
                );
              }),
            ],
          ),
          const SizedBox(height: 25),
          BlocBuilder<CampusEventBloc, CampusEventState>(
            builder: (context, state) {
              return GridView.count(
                shrinkWrap: true,
                primary: false,
                crossAxisCount: 7,
                children: List.generate(42, (index) {
                  return date(index);
                }),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget availableDates(int index) {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: (context, state) {
        if (state is CampusEventLoaded) {
          return Column(
            children: [
              GestureDetector(
                onTap: () => context
                    .read<CampusEventBloc>()
                    .add(DateChanged(day: index)),
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: index == state.selectedDay.day
                          ? const Color(0xFF0081FF)
                          : Colors.transparent,
                      width: 1,
                    ),
                    color: index == state.today.day
                        ? const Color(0xFF0081FF)
                        : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '$index',
                    style: textStyleNormal(
                      index == state.today.day
                          ? Colors.white
                          : const Color(0xFF353B45),
                      16,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...state.calendarData[index].data.map(
                    (event) => Container(
                      padding: const EdgeInsets.symmetric(horizontal: 1),
                      width: 3,
                      height: 3,
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
        }

        return const CircularProgressIndicator();
      },
    );
  }

  Widget disableDates(int index) {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: (context, state) {
        if (state is CampusEventLoaded) {
          final firstDay =
              DateTime(state.selectedDay.year, state.selectedDay.month);
          int weight = index <= 0 ? -1 : 1;

          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: Text(
                  // '$index',
                  '${firstDay.add(Duration(days: index - 1)).day}',
                  style: textStyleNormal(const Color(0xFFBEBEC0), 16),
                ),
              ),
              const SizedBox(height: 9),
            ],
          );
        }

        return const CircularProgressIndicator();
      },
    );
  }

  Widget date(int index) {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: (context, state) {
        final today =
            state is CampusEventLoaded ? state.selectedDay : DateTime.now();

        final selectedFirstDay = DateTime(today.year, today.month);

        // int _firstDay = today.weekday - (today.day % 7 - 1);
        index -= selectedFirstDay.weekday - 1;

        return (index > 0 &&
                index <= context.read<CampusEventBloc>().endDays(today))
            ? availableDates(index)
            : disableDates(index);
      },
    );
  }
}