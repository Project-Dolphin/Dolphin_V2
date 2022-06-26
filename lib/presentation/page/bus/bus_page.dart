import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/common/shaded_decorated_container.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_101_bloc/line_101_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_190_bloc/line_190_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_66_bloc/line_66_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_88_bloc/line_88_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_8_bloc/line_8_bloc.dart';
import 'package:oceanview/presentation/page/bus/bus_detail.dart';

class BusPage extends StatelessWidget {
  const BusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            ShadedDecoratedContainer(
              child: BlocBuilder<Line190Bloc, Line190State>(
                builder: ((context, state) {
                  logger.d(state);
                  if (state is Line190LoadedWithBusInfo) {
                    return BusDetail(data: state.busInfo);
                  }

                  return const Text('');
                }),
              ),
            ),
            ShadedDecoratedContainer(
              child: Column(
                children: [
                  BlocBuilder<Line101Bloc, Line101State>(
                    builder: ((context, state) {
                      logger.d(state);
                      if (state is Line101LoadedWithBusInfo) {
                        return BusDetail(data: state.busInfo);
                      }

                      return const Text('');
                    }),
                  ),
                  BlocBuilder<Line66Bloc, Line66State>(
                    builder: ((context, state) {
                      logger.d(state);
                      if (state is Line66LoadedWithBusInfo) {
                        return BusDetail(data: state.busInfo);
                      }

                      return const Text('');
                    }),
                  ),
                  BlocBuilder<Line88Bloc, Line88State>(
                    builder: ((context, state) {
                      logger.d(state);
                      if (state is Line88LoadedWithBusInfo) {
                        return BusDetail(data: state.busInfo);
                      }

                      return const Text('');
                    }),
                  ),
                ],
              ),
            ),
            BlocBuilder<Line8Bloc, Line8State>(
              builder: ((context, state) {
                logger.d(state);
                if (state is Line8LoadedWithBusInfo) {
                  return BusDetail(data: state.busInfo);
                }

                return const Text('');
              }),
            ),
          ],
        ),
      ),
    );
  }
}
