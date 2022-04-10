import 'package:flutter/material.dart';

import 'widgets/calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CalendarWidget();
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
