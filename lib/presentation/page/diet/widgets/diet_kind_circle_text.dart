import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';
import 'package:oceanview/presentation/blocs/diet_page_bloc/diet_page_bloc.dart';

class DietKindCircleText extends StatelessWidget {
  const DietKindCircleText({
    required this.dietTab,
    Key? key,
  }) : super(key: key);
  final DietTab dietTab;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context
          .read<DietPageBloc>()
          .add(DietTabSelected(selectedTab: dietTab)),
      child: BlocBuilder<DietPageBloc, DietPageState>(
        builder: ((context, state) {
          return Container(
            padding: const EdgeInsets.all(15),
            child: Text(
              dietTab.text,
              style: TextStyle(
                color: state.selectedDietTab == dietTab
                    ? const Color(0xFF0081FF)
                    : const Color(0xFF898989),
              ),
            ),
          );
        }),
      ),
    );
  }
}
