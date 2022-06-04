import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/floating_bottom_item.dart';
import 'package:oceanview/core/config/enum/root_tab_enum.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';

class OceanViewNavigationBar extends StatelessWidget {
  const OceanViewNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 24,
      margin: const EdgeInsets.fromLTRB(12, 0, 12, 20),
      padding: const EdgeInsets.only(bottom: 5, top: 2, left: 22, right: 22),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Theme.of(context).bottomAppBarColor.withOpacity(.8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<DashBoardBloc, DashBoardState>(builder: (
            context,
            state,
          ) {
            final int emptySpaceSize =
                ((MediaQuery.of(context).size.width - 68 - 110) / 4).floor();
            // 패딩 + 마진 = 68
            // iconSize = 24, 24*5=120
            // (MediaQuery-68-120)/4

            return AnimatedContainer(
              margin: EdgeInsets.only(
                left: state.selectedTab.index * (emptySpaceSize + 22) + 3,
              ),
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOut,
              alignment: Alignment.center,
              width: 16,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31.82),
                color: Theme.of(context).primaryColor,
              ),
            );
          }),
          const SizedBox(height: 6),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...RootTab.values.map(
                (tab) => FloatingBottomItem(tab: tab),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
