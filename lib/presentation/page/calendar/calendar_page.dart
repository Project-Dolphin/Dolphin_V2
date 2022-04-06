import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CampusEventBloc, CampusEventState>(
      builder: ((context, state) {
        if (state is CampusEventLoaded) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ...state.weekDayEvent.map((e) => Text(e.content ?? '')),
                ...state.holidayEvent.map((e) => Text(e.content ?? '')),
              ],
            ),
          );
        }

        return const CircularProgressIndicator();
      }),
    );
  }
}
