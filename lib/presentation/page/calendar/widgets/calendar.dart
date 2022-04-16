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
              ...['월', '화', '수', '목', '금', '토', '일'].map((e) {
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
          SizedBox(
            height: 400,
            child: BlocBuilder<CampusEventBloc, CampusEventState>(
              builder: (context, state) {
                return GridView.count(
                  primary: false,
                  crossAxisCount: 7,
                  children: List.generate(42, (index) {
                    return _date(index);
                  }),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _availableDates(int index) {
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
                        16),
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

  Widget _disableDates(int index) {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: (context, state) {
        if (state is CampusEventLoaded) {
          final firstDay = DateTime(state.today.year, state.today.month);
          const weight = -1;

          return Column(
            children: [
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(8),
                child: Text(
                  '${firstDay.add(Duration(days: index + weight)).day}',
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

  Widget _date(int index) {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: (context, state) {
        final today = state is CampusEventLoaded ? state.today : DateTime.now();

        int _firstDay = today.weekday - (today.day % 7 - 1);
        index -= _firstDay - 1;

        return (index > 0 &&
                index <= context.read<CampusEventBloc>().endDays(today))
            ? _availableDates(index)
            : _disableDates(index);
      },
    );
  }
}
