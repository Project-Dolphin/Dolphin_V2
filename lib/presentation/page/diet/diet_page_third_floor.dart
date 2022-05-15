import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';
import 'package:oceanview/presentation/page/diet/widgets/diet_grid_view.dart';

class ThridFloorPage extends StatelessWidget {
  const ThridFloorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DietDataBloc, DietDataState>(builder: (context, state) {
      if (state is DietLoaded) {
        return SingleChildScrollView(
          controller: context.read<DashBoardBloc>().lunchDietScrollController,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ...state.cafeData.snack.sublist(0, 2).map((diet) => DietGridView(
                    type: diet.type,
                    dietData: diet.menus,
                  )),
              ...state.cafeData.snack.sublist(2, 4).map((diet) => DietGridView(
                    type: diet.type,
                    dietData: diet.menus,
                  )),
              ...state.cafeData.snack.sublist(4).map((diet) => DietGridView(
                    type: diet.type,
                    dietData: diet.menus,
                  )),
            ],
          ),
        );
      }

      return const CircularProgressIndicator();
    });
  }
}
