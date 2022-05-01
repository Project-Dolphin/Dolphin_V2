import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/r.dart';
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
                      14,
                    ),
                  ),
                  const SizedBox(width: 3),
                  R.image.icon_arrow_right.svgPictureSize(
                    size: 7,
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 4),
          BlocBuilder<HomeDataBloc, HomeDataState>(
            builder: ((context, state) {
              if (state is HomeDataLoaded) {
                return Column(
                  children: [
                    ...state.notice.map((noticeDetail) {
                      final bool first =
                          state.notice.indexOf(noticeDetail) == 0;

                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4),
                        child: Row(
                          children: [
                            Container(
                              width: 3,
                              height: 3,
                              decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.primary,
                                shape: BoxShape.circle,
                              ),
                            ),
                            const SizedBox(width: 7),
                            Expanded(
                              child: Text(
                                noticeDetail.title ?? '',
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: first
                                    ? textStyleBold(
                                        Theme.of(context).colorScheme.onPrimary,
                                        13,
                                      )
                                    : textStyleNormal(
                                        Theme.of(context).colorScheme.onPrimary,
                                        13,
                                      ),
                              ),
                            ),
                          ],
                        ),
                      );
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
