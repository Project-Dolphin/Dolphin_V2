import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/network/response/endpoint_weather_now/response_weather_now_data_dto.dart';

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({required this.weatherData, Key? key}) : super(key: key);
  final WeatherData weatherData;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '해양대 날씨',
              style: textStyleBold(
                Theme.of(context).colorScheme.onPrimary,
                14,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              weatherData.temparature,
              style: textStyleNormal(
                Theme.of(context).primaryColor,
                36,
              ),
            ),
          ],
        ),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              weatherData.status,
              style: textStyleNormal(
                Theme.of(context).colorScheme.onPrimary,
                16,
              ),
            ),
            const SizedBox(height: 6),
            Text(
              weatherData.windSpeed,
              style: textStyleBold(
                Theme.of(context).colorScheme.onPrimary,
                12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
