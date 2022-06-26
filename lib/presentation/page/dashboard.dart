import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/oceanview_navigation_bar.dart';
import 'package:oceanview/injection_container.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/diet_page_bloc/diet_page_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_8_bloc/line_8_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/shuttle_bus_bloc/shuttle_bus_bloc.dart';
import 'package:oceanview/presentation/page/widgets/page_view.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => sl<DashBoardBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<DietPageBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<HomeDataBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<Line8Bloc>(),
        ),
        BlocProvider(
          create: (_) => sl<DietDataBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<CampusEventBloc>(),
        ),
        BlocProvider(
          create: (_) => sl<ShuttleBusBloc>(),
        ),
      ],
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: BlocBuilder<DashBoardBloc, DashBoardState>(builder: ((
                context,
                state,
              ) {
                // TODO : 대쉬보드 로딩 전에는 loadingState 보여줘도 됨
                return BlocPageView(state.selectedTab);
                /*
                예시 : 
                if(state is DashBoardLoaded){
                  return TabView(state.selectedTab);
                }
                return Loading();
                */
              })),
            ),
            const OceanViewNavigationBar(),
          ],
        ),
      ),
    );
  }
}

// ignore: prefer-single-widget-per-file

// TODO : Bloc을 통해 선택 된 페이지의 인덱스를 관리할 것

// ignore: prefer-single-widget-per-file
