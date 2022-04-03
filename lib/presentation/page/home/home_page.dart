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
        const NoticeBox(),
      ],
    );
  }

  _buildWeatherAndLatestEvent() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: const [
        Expanded(child: WeatherBox()),
        SizedBox(width: 14),
        Expanded(child: EventBox()),
      ],
    );
  }
}
