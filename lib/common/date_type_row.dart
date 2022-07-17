import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

class DateTypeRow extends StatelessWidget {
  const DateTypeRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          DateFormat('M.d EEEE', 'ko_KR').format(DateTime.now()),
          style: textStyleNormal(
            Theme.of(context).colorScheme.onPrimary,
            12,
          ),
        ),
        const SizedBox(width: 6),
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 4,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: Theme.of(context).canvasColor,
          ),
          child: BlocBuilder<HomeDataBloc, HomeDataState>(
            builder: (context, state) {
              final dateText = state is HomeDataLoaded ? state.dateType : '';

              return Text(
                dateText,
                style: textStyleNormal(
                  Theme.of(context).colorScheme.primary,
                  11,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
