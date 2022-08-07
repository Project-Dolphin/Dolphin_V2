import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';

import 'widgets/calendar.dart';
import 'widgets/calendar_detail.dart';
import 'widgets/calendar_header_sliver_delegate.dart';

class CampusEventPage extends StatelessWidget {
  const CampusEventPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        shrinkWrap: true,
        controller: context.read<DashBoardBloc>().campusEventScrollController,
        scrollDirection: Axis.vertical,
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: CalendarHeaderSliverDelegate(
              minHeight: 50.0,
              maxHeight: 116.0,
            ),
          ),
          // SliverPersistentHeader(
          //   pinned: true,
          //   delegate: CalendarTabSliverDelegate(
          //     minHeight: 90.0,
          //     maxHeight: 90.0,
          //   ),
          // ),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 70,
                ),
                child: Column(
                  children: const [
                    SizedBox(height: 13),
                    CalendarWidget(),
                    SizedBox(height: 12),
                    CalendarDetailWidget(),
                  ],
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
