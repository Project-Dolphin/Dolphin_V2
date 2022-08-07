import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';
import 'package:oceanview/presentation/page/diet/widgets/diet_grid_view.dart';

class LunchDietPage extends StatelessWidget {
  const LunchDietPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DietDataBloc, DietDataState>(builder: (context, state) {
      if (state is DietLoaded) {
        return SingleChildScrollView(
          controller: context.read<DashBoardBloc>().lunchDietScrollController,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...state.lunch.map(
                (diet) => DietGridView(
                  type: diet.title,
                  dietData: diet.menus,
                ),
              ),
              const SizedBox(height: 120),
            ],
          ),
        );
      }

      return const CircularProgressIndicator();
    });
  }
}
