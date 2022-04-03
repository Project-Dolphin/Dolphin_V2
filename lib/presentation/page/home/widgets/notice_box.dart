import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

class NoticeBox extends StatelessWidget {
  const NoticeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('학사안내'),
              // TODO : Add URL Launcher,
              Text('학교 홈페이지'),
            ],
          ),
          BlocBuilder<HomeDataBloc, HomeDataState>(
            builder: ((context, state) {
              if (state is HomeDataLoaded) {
                return Column(
                  children: [
                    ...state.notice.map((noticeDetail) {
                      return Text(noticeDetail.title ?? '');
                    }),
                  ],
                );
              }
              return const CircularProgressIndicator();
            }),
          ),
        ],
      ),
    );
  }
}
