import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_101_bloc/line_101_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_186_bloc/line_186_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_190_bloc/line_190_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_30_bloc/line_30_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_66_bloc/line_66_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_88_bloc/line_88_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/shuttle_bus_bloc/shuttle_bus_bloc.dart';
import 'package:oceanview/presentation/page/bus/bus_detail.dart';
import 'package:oceanview/presentation/page/bus/bus_header_sliver_delegate.dart';
import 'package:oceanview/presentation/page/bus/bus_shuttle_detail.dart';

class BusPage extends StatelessWidget {
  const BusPage({Key? key}) : super(key: key);

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
              delegate: BusHeaderSliverDelegate(
                height: 40.0,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                DecoratedContainer(
                  child: BlocBuilder<ShuttleBusBloc, ShuttleBusState>(
                    builder: ((context, state) {
                      logger.d(state);
                      if (state is ShuttleDataLoaded) {
                        return BusPageShuttleDetail(
                          data: state.nextShuttleInfo,
                        );
                      }

                      return const Text('');
                    }),
                  ),
                ),
                SizedBox(height: 30),
                DecoratedContainer(
                  child: BlocBuilder<Line190Bloc, Line190State>(
                    builder: ((context, state) {
                      logger.d(state);
                      if (state is Line190LoadedWithBusInfo) {
                        return BusDetail(
                          data: state.busInfo,
                          selectedBusStop:
                              context.read<Line190Bloc>().nodeParam.busStop,
                          busStopList: [],
                        );
                      }

                      return const Text('');
                    }),
                  ),
                ),
                SizedBox(height: 30),
                DecoratedContainer(
                  child: Column(
                    children: [
                      BlocBuilder<Line101Bloc, Line101State>(
                        builder: ((context, state) {
                          logger.d(state);
                          if (state is Line101LoadedWithBusInfo) {
                            return BusDetail(
                              data: state.busInfo,
                              selectedBusStop:
                                  context.read<Line190Bloc>().nodeParam.busStop,
                              busStopList: [],
                            );
                          }

                          return const Text('');
                        }),
                      ),
                      SizedBox(height: 34),
                      BlocBuilder<Line66Bloc, Line66State>(
                        builder: ((context, state) {
                          logger.d(state);
                          if (state is Line66LoadedWithBusInfo) {
                            return BusDetail(
                              data: state.busInfo,
                              selectedBusStop:
                                  context.read<Line190Bloc>().nodeParam.busStop,
                              busStopList: [],
                            );
                          }

                          return const Text('');
                        }),
                      ),
                      SizedBox(height: 34),
                      BlocBuilder<Line88Bloc, Line88State>(
                        builder: ((context, state) {
                          logger.d(state);
                          if (state is Line88LoadedWithBusInfo) {
                            return BusDetail(
                              data: state.busInfo,
                              selectedBusStop:
                                  context.read<Line190Bloc>().nodeParam.busStop,
                              busStopList: [],
                            );
                          }

                          return const Text('');
                        }),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),
                DecoratedContainer(
                  child: Column(
                    children: [
                      BlocBuilder<Line30Bloc, Line30State>(
                        builder: ((context, state) {
                          logger.d(state);
                          if (state is Line30LoadedWithBusInfo) {
                            return BusDetail(
                              data: state.busInfo,
                              selectedBusStop: state.selectedBusStop,
                              busStopList: context.read<Line30Bloc>().paramList,
                              busCallBack: (busInfo) => context
                                  .read<Line30Bloc>()
                                  .add(Change30Node(busInfo)),
                            );
                          }

                          return const Text('');
                        }),
                      ),
                      SizedBox(height: 34),
                      BlocBuilder<Line186Bloc, Line186State>(
                        builder: ((context, state) {
                          logger.d(state);
                          if (state is Line186LoadedWithBusInfo) {
                            return BusDetail(
                              data: state.busInfo,
                              selectedBusStop:
                                  context.read<Line190Bloc>().nodeParam.busStop,
                              busStopList: [],
                            );
                          }

                          return const Text('');
                        }),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
