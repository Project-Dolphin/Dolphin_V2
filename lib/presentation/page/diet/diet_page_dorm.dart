import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/presentation/blocs/dashboard_bloc/dashboard_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';

import 'widgets/diet_grid_view.dart';

class DormPage extends StatelessWidget {
  const DormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DietDataBloc, DietDataState>(builder: (context, state) {
      if (state is DietLoaded) {
        return SingleChildScrollView(
          controller: context.read<DashBoardBloc>().dormDietScrollController,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              DietGridView(
                type: '기숙사 아침',
                dietData: state.dormData.morning,
                timeLimit: '08:00 ~ 09:00',
              ),
              SizedBox(height: 12),
              DietGridView(
                type: '기숙사 점심',
                dietData: state.dormData.lunch,
                timeLimit: '11:40 ~ 13:30',
              ),
              SizedBox(height: 12),
              DietGridView(
                type: '기숙사 저녁',
                dietData: state.dormData.dinner,
                timeLimit: '17:00 ~ 18:30',
              ),
            ],
          ),
        );
      }

      return const CircularProgressIndicator();
    });
  }

  _buildGridView(String type, List<String> dietData) {
    return DecoratedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('기숙사 $type'),
          SizedBox(height: 14),
          Wrap(
            children: [
              ...dietData.map((e) => SizedBox(
                    width: 100,
                    child: Text(e),
                  ))
            ],
          ),
          // GridView.builder(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: dietData?.length ?? 0,
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     // mainAxisSpacing: 5,
          //     // crossAxisSpacing: 30,
          //     childAspectRatio: 4.0,
          //   ),
          //   itemBuilder: (BuildContext context, int index) {
          //     //item 의 반목문 항목 형성
          //     return Text(
          //       dietData?[index] ?? '',
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
