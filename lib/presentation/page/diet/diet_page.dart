import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';
import 'package:oceanview/presentation/blocs/diet_page_bloc/diet_page_bloc.dart';
import 'package:oceanview/presentation/page/diet/diet_page_dorm.dart';
import 'package:oceanview/presentation/page/diet/diet_page_fifth_floor.dart';
import 'package:oceanview/presentation/page/diet/diet_page_navy.dart';
import 'package:oceanview/presentation/page/diet/diet_page_second_floor.dart';
import 'package:oceanview/presentation/page/diet/diet_page_third_floor.dart';

import 'widgets/diet_kind_circle_button.dart';
import 'widgets/diet_kind_circle_text.dart';

class DietPage extends StatelessWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            DietKindCircleButton(dietTab: DietTab.morning),
            DietKindCircleButton(dietTab: DietTab.lunch),
            DietKindCircleButton(dietTab: DietTab.dinner),
            DietKindCircleText(dietTab: DietTab.dorm),
            DietKindCircleText(dietTab: DietTab.navy),
          ],
        ),
        Expanded(
          child: BlocBuilder<DietPageBloc, DietPageState>(
            builder: ((context, state) {
              switch (state.selectedDietTab) {
                case DietTab.morning:
                  return const SecondFloorPage();
                case DietTab.lunch:
                  return const ThridFloorPage();
                case DietTab.dinner:
                  return const FifthFloorPage();
                case DietTab.dorm:
                  return const DormPage();
                case DietTab.navy:
                  return const NavyPage();
              }
            }),
          ),
        ),
      ],
    );
  }
}
