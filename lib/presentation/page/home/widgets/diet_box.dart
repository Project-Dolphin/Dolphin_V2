import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';

import '../shimmer/diet_box_detail_shimmer.dart';
import 'diet_box_detail.dart';

class DietBox extends StatelessWidget {
  const DietBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width * 0.893 - 34) / 2;

    return DecoratedContainer(
      child: BlocBuilder<DietDataBloc, DietDataState>(
        builder: ((context, state) {
          if (state is DietLoaded) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DietBoxDetail(
                  type: '3층',
                  data: state.cafeData.snack[1],
                  width: width - 20,
                ),
                const SizedBox(width: 12),
                DietBoxDetail(
                  type: '2층',
                  data: state.cafeData.student.first,
                  width: width - 20,
                ),
              ],
            );
          }

          return Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DietBoxDetailShimmer(
                width: width - 20,
              ),
              const SizedBox(width: 12),
              DietBoxDetailShimmer(
                width: width - 20,
              ),
            ],
          );
        }),
      ),
    );
  }
}
