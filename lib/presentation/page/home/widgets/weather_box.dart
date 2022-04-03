import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

class WeatherBox extends StatelessWidget {
  const WeatherBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      child: Column(
        children: [
          Text('해양대 날씨'),
          BlocBuilder<HomeDataBloc, HomeDataState>(
            builder: ((context, state) {
              if (state is HomeDataLoaded) {
                return Column(
                  children: [
                    Text(state.weather.temparature ?? ''),
                    Text(state.weather.status ?? ''),
                    Text(state.weather.humidity ?? ''),
                    Text(state.weather.windSpeed ?? ''),
                  ],
                );
              }
              return const CircularProgressIndicator();
            }),
          ),
        ],
      ),
    );
  }
}
