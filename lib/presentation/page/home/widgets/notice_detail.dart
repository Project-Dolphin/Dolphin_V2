import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/network/response/endpoint_notices/response_notice_data_dto.dart';

class NoticeDetail extends StatelessWidget {
  const NoticeDetail({required this.noticeList, Key? key}) : super(key: key);
  final List<NoticeData> noticeList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...noticeList.map((noticeDetail) {
          final bool first = noticeList.indexOf(noticeDetail) == 0;

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
}
