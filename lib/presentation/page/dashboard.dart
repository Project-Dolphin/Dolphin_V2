import 'package:flutter/material.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/oceanview_navigation_bar.dart';
import 'package:oceanview/core/utils/text_utils.dart';
import 'package:oceanview/injection_container.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/diet_page_bloc/diet_page_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_101_bloc/line_101_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_186_bloc/line_186_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_190_bloc/line_190_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_30_bloc/line_30_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_66_bloc/line_66_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_88_bloc/line_88_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_8_bloc/line_8_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/campus_event_bloc/campus_event_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/shuttle_bus_bloc/shuttle_bus_bloc.dart';
import 'package:oceanview/presentation/page/widgets/page_view.dart';

class DashBoard extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _DashBoardState();
  }
}

class _DashBoardState extends State<DashBoard> {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      FlutterAppBadger.removeBadge();
    }
  }

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
          create: (_) => sl<Line30Bloc>(),
        ),
        BlocProvider(
          create: (_) => sl<Line66Bloc>(),
        ),
        BlocProvider(
          create: (_) => sl<Line88Bloc>(),
        ),
        BlocProvider(
          create: (_) => sl<Line101Bloc>(),
        ),
        BlocProvider(
          create: (_) => sl<Line186Bloc>(),
        ),
        BlocProvider(
          create: (_) => sl<Line190Bloc>(),
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
        body: SafeArea(
          child: Stack(
            children: [
              BlocBuilder<DashBoardBloc, DashBoardState>(builder: ((
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
              const Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 30),
                  child: OceanViewNavigationBar(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: prefer-single-widget-per-file

// TODO : Bloc을 통해 선택 된 페이지의 인덱스를 관리할 것

// ignore: prefer-single-widget-per-file
