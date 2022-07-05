import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/shaded_decorated_container.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_190_bloc/line_190_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/shuttle_bus_bloc/shuttle_bus_bloc.dart';
import 'package:oceanview/presentation/page/bus/bus_detail.dart';

import '../shimmer/bus_shuttle_detail_shimmer.dart';
import 'bus_shuttle_detail.dart';

class BusBox extends StatelessWidget {
  const BusBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShadedDecoratedContainer(
      child: Column(
        children: [
          BlocBuilder<ShuttleBusBloc, ShuttleBusState>(
            builder: ((context, state) {
              if (state is ShuttleDataLoaded) {
                return ShuttleBusDetail(
                  data: state.nextShuttleInfo,
                );
              }

              return const ShuttleBusDetailShimmer();
            }),
          ),
          SizedBox(height: 34),
          BlocBuilder<Line190Bloc, Line190State>(
            builder: ((context, state) {
              if (state is Line190LoadedWithBusInfo) {
                return BusDetail(
                  data: state.busInfo,
                  selectedBusStop:
                      context.read<Line190Bloc>().nodeParam.busStop,
                  busStopList: [],
                );
              }

              return const ShuttleBusDetailShimmer();
            }),
          ),
        ],
      ),
    );
  }
}
