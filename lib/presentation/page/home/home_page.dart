import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/utils/constants.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/page/home/widgets/ocean_view_title.dart';

import 'widgets/bus_box.dart';
import 'widgets/diet_box.dart';
import 'widgets/event_box.dart';
import 'widgets/notice_box.dart';
import 'widgets/weather_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   foregroundColor: Colors.transparent,
      //   elevation: 0,
      //   title: Transform(
      //     // you can forcefully translate values left side using Transform
      //     transform: Matrix4.translationValues(-60.0, 0.0, 0.0),
      //     child: const OceanViewTitle(),
      //   ),
      // ),
      // extendBody: true,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 70,
              alignment: Alignment.centerLeft,
              child: const OceanViewTitle(),
            ),
            Expanded(
              child: SingleChildScrollView(
                controller: context.read<DashBoardBloc>().homeScrollController,
                child: Column(
                  children: [
                    GestureDetector(
                        onTap: () => Navigator.pushNamed(
                              context,
                              AppConstants.RUNNING_BUS_ROUTE,
                            ),
                        child: const BusBox()),
                    const SizedBox(height: 12),
                    const DietBox(),
                    const SizedBox(height: 12),
                    _buildWeatherAndLatestEvent(),
                    const SizedBox(height: 12),
                    const NoticeBox(),
                  ],
                ),
                // child: Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   child:
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildWeatherAndLatestEvent() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        WeatherBox(),
        EventBox(),
      ],
    );
  }
}
