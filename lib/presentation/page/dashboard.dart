import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/injection_container.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/city_bus_bloc/city_bus_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';
import 'package:oceanview/presentation/page/widgets/tab_view.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  PageController imagesController =
      PageController(initialPage: 0, viewportFraction: 1.1);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<DashBoardBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<HomeDataBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<CityBusBloc>(),
        )
      ],
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          foregroundColor: Colors.transparent,
          elevation: 0,
          title: const MainTitle(),
        ),
        extendBody: true,
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<DashBoardBloc, DashBoardState>(builder: ((
                context,
                state,
              ) {
                //TODO : 대쉬보드 로딩 전에는 loadingState 보여줘도 됨
                RootTab _selectedTab =
                    state is DashBoardLoaded ? state.selectedTab : RootTab.home;
                return TabView(_selectedTab);
                /*
                예시 : 
                if(state is DashBoardLoaded){
                  return TabView(state.selectedTab);
                }
                return Loading();
                */
              })),
            ),
            _buildBodttomNavigation(context),
          ],
        ),
      ),
    );
  }

  _buildBodttomNavigation(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 24,
      margin: const EdgeInsets.fromLTRB(12, 0, 12, 20),
      padding: const EdgeInsets.only(bottom: 5, top: 2, left: 22, right: 22),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        gradient: const LinearGradient(
          colors: [
            Color(0xFF1D85FF),
            Color(0xFF3598F9),
          ],
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...RootTab.values.map((tab) {
            return FloatingBottomItem(tab: tab);
          })
        ],
      ),
    );
  }
}

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
        RootTab temp =
            state is DashBoardLoaded ? state.selectedTab : RootTab.home;
        return SizedBox(
          width: 36,
          height: 47,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.center,
                height: 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(31.82),
                  color: temp == tab
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                ),
              ),
              Column(
                children: [
                  temp == tab ? tab.selectedIcon : tab.icon,
                  const SizedBox(height: 4),
                  Text(
                    tab.text,
                    style: const TextStyle(
                      fontSize: 8,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      }),
    );
  }
}

// TODO : Bloc을 통해 선택 된 페이지의 인덱스를 관리할 것
class MainTitle extends StatelessWidget {
  const MainTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) =>
          const LinearGradient(colors: [Color(0xFF1E7AFF), Color(0xFF009DF5)])
              .createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text('OceanView',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w700)),
    );
  }
}

class Title extends StatelessWidget {
  const Title({required int index, Key? key})
      : _selectedIndex = index,
        super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  _buildMainTitle(BuildContext context) {
    return Text('OceanView', style: Theme.of(context).textTheme.headline5);
  }
}
