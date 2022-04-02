import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.green,
      child: Center(
        child: BlocBuilder<HomeDataBloc, HomeDataState>(
          builder: (context, state) {
            if (state is HomeDataLoaded) {
              return Text('${state.notice.first}');
            }
            return const Text('없음');
          },
        ),
      ),
    );
  }
}
