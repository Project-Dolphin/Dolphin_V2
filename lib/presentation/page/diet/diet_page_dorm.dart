import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';

import 'widgets/diet_grid_view.dart';

class DormPage extends StatelessWidget {
  const DormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DietDataBloc, DietDataState>(builder: (context, state) {
      if (state is DietLoaded) {
        return SingleChildScrollView(
          controller: context.read<DashBoardBloc>().dormDietScrollController,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              DietGridView(
                type: '기숙사 아침',
                dietData: state.dormData.morning,
                timeLimit: '08:00 ~ 09:00',
              ),
              DietGridView(
                type: '기숙사 점심',
                dietData: state.dormData.lunch,
                timeLimit: '11:40 ~ 13:30',
              ),
              DietGridView(
                type: '기숙사 저녁',
                dietData: state.dormData.dinner,
                timeLimit: '17:00 ~ 18:30',
              ),
            ],
          ),
        );
      }

      return const CircularProgressIndicator();
    });
  }
}
