import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        title: const OceanViewTitle(),
      ),
      extendBody: true,
      body: SingleChildScrollView(
        controller: context.read<DashBoardBloc>().homeScrollController,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
              const BusBox(),
              const SizedBox(height: 12),
              const DietBox(),
              const SizedBox(height: 12),
              _buildWeatherAndLatestEvent(),
              const SizedBox(height: 12),
              const NoticeBox(),
            ],
          ),
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
