import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/diet_page_bloc/diet_page_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';

class DietKindCircleButton extends StatelessWidget {
  const DietKindCircleButton({
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
          return Container(
            width: 50, height: 50, alignment: Alignment.center,
            // padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: state.selectedDietTab == dietTab
                  ? Theme.of(context).primaryColor
                  : Colors.transparent,
              border: Border.all(
                width: 1,
                color: Theme.of(context).primaryColor,
              ),
            ),
            child: Text(
              dietTab.text,
              style: state.selectedDietTab == dietTab
                  ? textStyleBold(Theme.of(context).canvasColor, 18)
                  : textStyleNormal(const Color(0xFF898989), 18),
            ),
          );
        }),
      ),
    );
  }
}
