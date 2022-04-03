import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

class EventBox extends StatelessWidget {
  const EventBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        16,
      ),
      child: Column(
        children: [
          Text('가장 최근 학사 일정'),
          BlocBuilder<HomeDataBloc, HomeDataState>(
            builder: ((context, state) {
              if (state is HomeDataLoaded) {
                return Column(
                  children: [
                    Text(state.event.first.content ?? ''),
                    Text('${state.event.first.dDay ?? 0}'),
                    Text(state.event.first.term?.startedAt ?? ''),
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
