import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/diet_data_bloc/diet_data_bloc.dart';

class DormPage extends StatelessWidget {
  const DormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DietDataBloc, DietDataState>(builder: (context, state) {
      if (state is DietLoaded) {
        return SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildGridView('아침', state.dormData.morning),
              _buildGridView('점심', state.dormData.lunch),
              _buildGridView('저녁', state.dormData.dinner),
            ],
          ),
        );
      }

      return const CircularProgressIndicator();
    });
  }

  _buildGridView(String type, List<String>? dietData) {
    return Container(
      decoration: const BoxDecoration(color: Colors.green),
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Text('기숙사 $type'),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: dietData?.length ?? 0,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              //item 의 반목문 항목 형성
              return Text(
                dietData?[index] ?? '',
              );
            },
          ),
        ],
      ),
    );
  }
}
