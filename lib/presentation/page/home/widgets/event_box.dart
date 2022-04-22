import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

class EventBox extends StatelessWidget {
  const EventBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width * 0.893 - 34) / 2;

    return DecoratedContainer(
      width: width,
      height: width,
      child: BlocBuilder<HomeDataBloc, HomeDataState>(
        builder: ((context, state) {
          if (state is HomeDataLoaded) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: state.event.first.content ?? '',
                        style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary,
                          14,
                        ),
                        children: [
                          TextSpan(
                            text: '까지',
                            style: textStyleNormal(
                              Theme.of(context).colorScheme.onPrimary,
                              12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '${state.event.first.dDay ?? 0}일',
                      style: textStyleNormal(
                        Theme.of(context).primaryColor,
                        30,
                      ),
                    ),
                  ],
                ),
                Text(
                  state.event.first.term?.startedAt
                          ?.split('-')
                          .sublist(1)
                          .join('.') ??
                      '',
                  style: textStyleNormal(
                    Theme.of(context).colorScheme.onPrimary,
                    16,
                  ),
                ),
              ],
            );
          }

          return const CircularProgressIndicator();
        }),
      ),
    );
  }
}
