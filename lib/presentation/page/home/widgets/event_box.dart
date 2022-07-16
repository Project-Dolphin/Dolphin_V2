import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

import '../shimmer/event_detail_shimmer.dart';
import 'event_detail.dart';

class EventBox extends StatelessWidget {
  const EventBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width * 0.92 - 10) / 2;

    return DecoratedContainer(
      width: width,
      height: width,
      child: BlocBuilder<HomeDataBloc, HomeDataState>(
        builder: ((context, state) {
          if (state is HomeDataLoaded) {
            return EventDetail(eventList: state.event.calendar);
          }

          return const EventDetailShimmer();
        }),
      ),
    );
  }
}
