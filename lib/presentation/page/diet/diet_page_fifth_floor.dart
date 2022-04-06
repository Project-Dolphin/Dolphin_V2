import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';
import 'package:oceanview/presentation/page/diet/widgets/diet_grid_view.dart';

class FifthFloorPage extends StatelessWidget {
  const FifthFloorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DietDataBloc, DietDataState>(builder: (context, state) {
      if (state is DietLoaded) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              ...(state.cafeData.staff ?? []).map(
                (diet) => DietGridView(
                  type: diet.type!,
                  dietData: diet.menus,
                ),
              ),
            ],
          ),
        );
      }

      return const CircularProgressIndicator();
    });
  }
}
