import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

import '../shimmer/weather_detail_shimmer.dart';
import 'weather_detail.dart';

class WeatherBox extends StatelessWidget {
  const WeatherBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width * 0.893 - 34) / 2;

    return DecoratedContainer(
      width: width,
      height: width,
      child: BlocBuilder<HomeDataBloc, HomeDataState>(
        builder: ((context, state) {
          if (state is HomeDataLoaded) {
            return WeatherDetail(weatherData: state.weather);
          }

          return WeatherDetailShimmer();
        }),
      ),
    );
  }
}
