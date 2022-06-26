import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/root_tab_enum.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';

class FloatingBottomItem extends StatelessWidget {
  final RootTab tab;

  const FloatingBottomItem({required this.tab, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () =>
          context.read<DashBoardBloc>().add(RootTabSelected(selectedTab: tab)),
      child: BlocBuilder<DashBoardBloc, DashBoardState>(builder: (
        context,
        state,
      ) {
        final bool selected = state.selectedTab == tab;

        return SizedBox(
          width: 22,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              selected ? tab.selectedIcon : tab.icon,
              const SizedBox(height: 4),
              Text(
                tab.text,
                style: TextStyle(
                  fontSize: 8,
                  color: selected
                      ? Theme.of(context).primaryColor
                      : const Color(0xFFB7B7B7),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
