import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/diet_page_bloc/diet_page_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';

class DietKindCircleText extends StatelessWidget {
  const DietKindCircleText({
    required this.dietTab,
    Key? key,
  }) : super(key: key);
  final DietTab dietTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.read<DietPageBloc>().add(DietTabSelected(selectedTab: dietTab));
        context.read<DietDataBloc>().add(DormTabChanged(dietTab));
      },
      child: BlocBuilder<DietPageBloc, DietPageState>(
        builder: ((context, state) {
          return Text(
            dietTab.text,
            style: state.selectedDietTab == dietTab
                ? textStyleNormal(
                    Theme.of(context).primaryColor,
                    16,
                  )
                : textStyleNormal(
                    const Color(0xFF898989),
                    16,
                  ),
          );
        }),
      ),
    );
  }
}
