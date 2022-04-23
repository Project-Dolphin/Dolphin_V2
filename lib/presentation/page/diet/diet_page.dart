import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';
import 'package:oceanview/presentation/blocs/diet_page_bloc/diet_page_bloc.dart';
import 'package:oceanview/presentation/page/diet/diet_page_dorm.dart';
import 'package:oceanview/presentation/page/diet/diet_page_fifth_floor.dart';
import 'package:oceanview/presentation/page/diet/diet_page_navy.dart';
import 'package:oceanview/presentation/page/diet/diet_page_second_floor.dart';
import 'package:oceanview/presentation/page/diet/diet_page_third_floor.dart';

import 'widgets/diet_header_sliver_delegate.dart';
import 'widgets/diet_kind_circle_button.dart';
import 'widgets/diet_kind_circle_text.dart';
import 'widgets/diet_tab_sliver_delegate.dart';

class DietPage extends StatelessWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          shrinkWrap: true,
          // controller: scrollController,
          scrollDirection: Axis.vertical,
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: DietHeaderSliverDelegate(
                minHeight: 40.0,
                maxHeight: 70.0,
              ),
            ),
            SliverPersistentHeader(
              pinned: true,
              delegate: DietTabSliverDelegate(
                minHeight: 80.0,
                maxHeight: 80.0,
                child: Row(
                  children: [
                    const DietKindCircleButton(dietTab: DietTab.morning),
                    const DietKindCircleButton(dietTab: DietTab.lunch),
                    const DietKindCircleButton(dietTab: DietTab.dinner),
                    Expanded(
                      child: Center(
                        child: Container(
                          width: 1,
                          color: Theme.of(context).primaryColor,
                          height: 20,
                        ),
                      ),
                    ),
                    const DietKindCircleText(dietTab: DietTab.dorm),
                    const SizedBox(width: 20),
                    const DietKindCircleText(dietTab: DietTab.navy),
                  ],
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                BlocBuilder<DietPageBloc, DietPageState>(
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
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
