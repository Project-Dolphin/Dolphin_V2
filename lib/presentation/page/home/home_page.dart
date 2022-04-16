import 'package:flutter/material.dart';

import 'widgets/event_box.dart';
import 'widgets/notice_box.dart';
import 'widgets/weather_box.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildWeatherAndLatestEvent(),
        const SizedBox(height: 12),
        const NoticeBox(),
      ],
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
