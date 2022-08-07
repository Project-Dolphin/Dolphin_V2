import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_101_bloc/line_101_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_186_bloc/line_186_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_190_bloc/line_190_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_30_bloc/line_30_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_66_bloc/line_66_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_88_bloc/line_88_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/shuttle_bus_bloc/shuttle_bus_bloc.dart';
import 'package:oceanview/presentation/page/bus/bus_depart_detail.dart';
import 'package:oceanview/presentation/page/bus/bus_detail.dart';
import 'package:oceanview/presentation/page/bus/bus_header_sliver_delegate.dart';
import 'package:oceanview/presentation/page/bus/bus_shuttle_detail.dart';
import 'package:oceanview/presentation/page/home/shimmer/bus_shuttle_detail_shimmer.dart';

class BusPage extends StatelessWidget {
  const BusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: CustomScrollView(
          shrinkWrap: true,
          controller: context.read<DashBoardBloc>().busPageScrollController,
          scrollDirection: Axis.vertical,
          slivers: [
            SliverPersistentHeader(
              pinned: true,
              delegate: BusHeaderSliverDelegate(
                height: 70.0,
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  '해양대 출발',
                  style: textStyleBold(
                      Theme.of(context).colorScheme.onPrimary, 16),
                ),
                const SizedBox(height: 10),
                DecoratedContainer(
                  child: BlocBuilder<ShuttleBusBloc, ShuttleBusState>(
                    builder: ((context, state) {
                      if (state is ShuttleDataLoading) {
                        return const ShuttleBusDetailShimmer();
                      }

                      if (state is ShuttleDataLoaded) {
                        return BusPageShuttleDetail(
                          data: state.nextShuttleInfo,
                        );
                      }

                      return const Text('');
                    }),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '해양대',
                      style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary, 16),
                    ),
                    const SizedBox(width: 10),
                    R.image.icon_arrow_double.svgPicture(
                      width: 18,
                      height: 10,
                      fit: BoxFit.scaleDown,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '남부민동',
                      style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary, 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                DecoratedContainer(
                  child: BlocBuilder<Line190Bloc, Line190State>(
                    builder: ((context, state) {
                      logger.d(state);
                      if (state is Line190Loading) {
                        return const ShuttleBusDetailShimmer();
                      }

                      if (state is Line190LoadedWithBusInfo) {
                        return BusDetail(
                          data: state.busInfo,
                          selectedBusStop: state.selectedBusStop,
                          busStopList: context.read<Line190Bloc>().paramList,
                          busCallBack: (busInfo) => context
                              .read<Line190Bloc>()
                              .add(Change190Node(busInfo)),
                        );
                      }

                      if (state is Line190LoadedWithDepartInfo) {
                        return BusDepartDetail(
                          data: state.busInfo,
                          selectedBusStop: state.selectedBusStop,
                          busStopList: context.read<Line190Bloc>().paramList,
                          busCallBack: (busInfo) => context
                              .read<Line190Bloc>()
                              .add(Change190Node(busInfo)),
                        );
                      }

                      return const Text('');
                    }),
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '부산역',
                      style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary, 16),
                    ),
                    const SizedBox(width: 10),
                    R.image.icon_arrow_single.svgPicture(
                      width: 18,
                      height: 10,
                      fit: BoxFit.scaleDown,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '영도대교',
                      style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary, 16),
                    ),
                    const SizedBox(width: 10),
                    R.image.icon_arrow_single.svgPicture(
                      width: 18,
                      height: 10,
                      fit: BoxFit.scaleDown,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '해양대입구',
                      style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary, 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                DecoratedContainer(
                  child: Column(
                    children: [
                      BlocBuilder<Line101Bloc, Line101State>(
                        builder: ((context, state) {
                          if (state is Line101Loading) {
                            return const ShuttleBusDetailShimmer();
                          }

                          if (state is Line101LoadedWithBusInfo) {
                            return BusDetail(
                              data: state.busInfo,
                              selectedBusStop: state.selectedBusStop,
                              busStopList:
                                  context.read<Line101Bloc>().paramList,
                              busCallBack: (busInfo) => context
                                  .read<Line101Bloc>()
                                  .add(Change101Node(busInfo)),
                            );
                          }

                          return const Text('');
                        }),
                      ),
                      const SizedBox(height: 34),
                      BlocBuilder<Line66Bloc, Line66State>(
                        builder: ((context, state) {
                          if (state is Line66Loading) {
                            return const ShuttleBusDetailShimmer();
                          }

                          if (state is Line66LoadedWithBusInfo) {
                            return BusDetail(
                              data: state.busInfo,
                              selectedBusStop: state.selectedBusStop,
                              busStopList: context.read<Line66Bloc>().paramList,
                              busCallBack: (busInfo) => context
                                  .read<Line66Bloc>()
                                  .add(Change66Node(busInfo)),
                            );
                          }

                          return const Text('');
                        }),
                      ),
                      const SizedBox(height: 34),
                      BlocBuilder<Line88Bloc, Line88State>(
                        builder: ((context, state) {
                          if (state is Line88Loading) {
                            return const ShuttleBusDetailShimmer();
                          }

                          if (state is Line88LoadedWithBusInfo) {
                            return BusDetail(
                              data: state.busInfo,
                              selectedBusStop: state.selectedBusStop,
                              busStopList: context.read<Line88Bloc>().paramList,
                              busCallBack: (busInfo) => context
                                  .read<Line88Bloc>()
                                  .add(Change88Node(busInfo)),
                            );
                          }

                          return const Text('');
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '영도대교',
                      style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary, 16),
                    ),
                    const SizedBox(width: 10),
                    R.image.icon_arrow_single.svgPicture(
                      width: 18,
                      height: 10,
                      fit: BoxFit.scaleDown,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      '해양대입구',
                      style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary, 16),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                DecoratedContainer(
                  child: Column(
                    children: [
                      BlocBuilder<Line30Bloc, Line30State>(
                        builder: ((context, state) {
                          if (state is Line30Loading) {
                            return const ShuttleBusDetailShimmer();
                          }

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
                      const SizedBox(height: 34),
                      BlocBuilder<Line186Bloc, Line186State>(
                        builder: ((context, state) {
                          if (state is Line186Loading) {
                            return const ShuttleBusDetailShimmer();
                          }

                          if (state is Line186LoadedWithBusInfo) {
                            return BusDetail(
                              data: state.busInfo,
                              selectedBusStop: state.selectedBusStop,
                              busStopList:
                                  context.read<Line186Bloc>().paramList,
                              busCallBack: (busInfo) => context
                                  .read<Line186Bloc>()
                                  .add(Change186Node(busInfo)),
                            );
                          }

                          return const Text('');
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
