import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';
import 'package:oceanview/presentation/page/diet/widgets/diet_column_view.dart';

class ThridFloorPage extends StatelessWidget {
  const ThridFloorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DietDataBloc, DietDataState>(builder: (context, state) {
      if (state is DietLoaded) {
        return SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  ...(state.cafeData.snack?.sublist(0, 2) ?? [])
                      .map((diet) => DietColumnView(
                            type: diet.type ?? '',
                            dietData: diet.menus ?? [],
                          )),
                ],
              ),
              Row(
                children: [
                  ...(state.cafeData.snack?.sublist(2, 4) ?? [])
                      .map((diet) => DietColumnView(
                            type: diet.type ?? '',
                            dietData: diet.menus ?? [],
                          )),
                ],
              ),
              Row(
                children: [
                  ...(state.cafeData.snack?.sublist(4) ?? [])
                      .map((diet) => DietColumnView(
                            type: diet.type ?? '',
                            dietData: diet.menus ?? [],
                          )),
                ],
              ),
            ],
          ),
        );
      }

      return const CircularProgressIndicator();
    });
  }
}
