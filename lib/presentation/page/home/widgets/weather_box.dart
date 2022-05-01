import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

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
                      state.weather.temparature ?? '',
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
                      state.weather.status ?? '',
                      style: textStyleNormal(
                        Theme.of(context).colorScheme.onPrimary,
                        16,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      state.weather.windSpeed ?? '0m/s',
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

          return const CircularProgressIndicator();
        }),
      ),
    );
  }
}
