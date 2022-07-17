import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/floating_bottom_item.dart';
import 'package:oceanview/core/config/enum/root_tab_enum.dart';
import 'package:oceanview/core/config/enum/theme_enum.dart';
import 'package:oceanview/core/setting_bloc/setting_bloc.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';

class OceanViewNavigationBar extends StatelessWidget {
  const OceanViewNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 24,
      padding: const EdgeInsets.only(bottom: 5, top: 0, left: 22, right: 22),
      height: 57,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color:
            Theme.of(context).bottomAppBarColor.withOpacity(.8).withAlpha(247),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).buttonColor,
            blurRadius:
                context.read<SettingBloc>().state.theme == CustomTheme.dark
                    ? 2
                    : 10,
            // offset: const Offset(5, 5),
          ),
        ],
      ),
      // Theme.of(context).canvasColor.withOpacity(0.8),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<DashBoardBloc, DashBoardState>(builder: (
            context,
            state,
          ) {
            final int emptySpaceSize =
                ((MediaQuery.of(context).size.width - 24 - 44 - 180) / 4)
                    .floor();
            // 패딩 + 마진 = 68
            // iconSize = 24, 24*5=120
            // (MediaQuery-68-120)/4

            return AnimatedContainer(
              margin: EdgeInsets.only(
                left: state.selectedTab.index * (emptySpaceSize + 36),
              ),
              duration: const Duration(milliseconds: 100),
              curve: Curves.linear,
              alignment: Alignment.center,
              width: 36,
              height: 3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31.82),
                color: Theme.of(context).primaryColor,
              ),
            );
          }),
          Column(
            children: [
              const SizedBox(height: 3),
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
        ],
      ),
    );
  }
}
