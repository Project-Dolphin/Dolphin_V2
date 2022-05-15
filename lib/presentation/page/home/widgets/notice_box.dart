import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/blocs/view_model/home_data_bloc/home_data_bloc.dart';

import '../shimmer/notice_detail_shimmer.dart';
import 'notice_detail.dart';

class NoticeBox extends StatelessWidget {
  const NoticeBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).canvasColor,
        borderRadius: BorderRadius.circular(15),
        shape: BoxShape.rectangle,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '학사안내',
                style:
                    textStyleBold(Theme.of(context).colorScheme.onPrimary, 16),
              ),
              // TODO : Add URL Launcher,
              Row(
                children: [
                  Text(
                    '학교 홈페이지',
                    style: textStyleNormal(
                      Theme.of(context).colorScheme.onPrimary,
                      10,
                    ),
                  ),
                  const SizedBox(width: 3),
                  R.image.icon_arrow_right.svgPicture(width: 4, height: 7),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          BlocBuilder<HomeDataBloc, HomeDataState>(
            builder: ((context, state) {
              if (state is HomeDataLoaded) {
                return NoticeDetail(noticeList: state.notice);
              }

              return const NoticeDetailShimmer();
            }),
          ),
        ],
      ),
    );
  }
}
