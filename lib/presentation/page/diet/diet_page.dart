import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/diet_tab_enum.dart';
import 'package:oceanview/presentation/blocs/diet_page_bloc/diet_page_bloc.dart';
import 'package:oceanview/presentation/page/diet/diet_page_dinner.dart';
import 'package:oceanview/presentation/page/diet/diet_page_dorm.dart';
import 'package:oceanview/presentation/page/diet/diet_page_lunch.dart';
import 'package:oceanview/presentation/page/diet/diet_page_morning.dart';
import 'package:oceanview/presentation/page/diet/diet_page_navy.dart';

import 'widgets/diet_header_sliver_delegate.dart';

class DietPage extends StatelessWidget {
  const DietPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        shrinkWrap: true,
        // controller: scrollController,
        scrollDirection: Axis.vertical,
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: DietHeaderSliverDelegate(
              minHeight: 50.0,
              maxHeight: 100.0,
            ),
          ),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 16)),
          SliverList(
            delegate: SliverChildListDelegate([
              Container(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 100,
                ),
                child: BlocBuilder<DietPageBloc, DietPageState>(
                  builder: ((context, state) {
                    switch (state.selectedDietTab) {
                      case DietTab.morning:
                        return const MorningDietPage();
                      case DietTab.lunch:
                        return const LunchDietPage();
                      case DietTab.dinner:
                        return const DinnerDietPage();
                      case DietTab.dorm:
                        return const DormPage();
                      case DietTab.navy:
                        return const NavyPage();
                    }
                  }),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
