import 'package:flutter/material.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_data_dto.dart';

class ShuttleBusDetail extends StatelessWidget {
  const ShuttleBusDetail({required this.data, Key? key}) : super(key: key);

  final List<ShuttleDataDto> data;

  @override
  Widget build(BuildContext context) {
    ShuttleDataDto firstBus = data.isEmpty ? ShuttleDataDto() : data[0];
    // TODO : 막차여서 데이터가 없을 경우도 생각해야함
    ShuttleDataDto secondBus = data.length < 2 ? ShuttleDataDto() : data[1];

    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Theme.of(context).primaryColor,
              width: 2,
            ),
            shape: BoxShape.circle,
          ),
          child: Text(
            '셔틀',
            style: textStyleBold(Theme.of(context).primaryColor, 17),
          ),
        ),
        const SizedBox(width: 19),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '학교종점',
                style: textStyleNormal(
                  Theme.of(context).colorScheme.onPrimary,
                  14,
                ),
              ),
              Builder(
                builder: (context) {
                  if (data.isEmpty) {
                    return Text(
                      '버스가 없어요',
                      style: textStyleBold(
                        Theme.of(context).colorScheme.onPrimary,
                        18,
                      ),
                      softWrap: true,
                    );
                  }

                  return Row(
                    children: [
                      Text(
                        '${remainTime(firstBus)}분',
                        style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary,
                          18,
                        ),
                        softWrap: true,
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Divider(
                          color: Theme.of(context).primaryColor,
                          thickness: 1,
                        ),
                      ),
                      const SizedBox(width: 20),
                      Text(
                        remainTime(secondBus) == 999
                            ? '버스가 없어요'
                            : '${remainTime(secondBus)}분',
                        style: textStyleBold(
                          Theme.of(context).colorScheme.onPrimary,
                          18,
                        ),
                        softWrap: true,
                      ),
                    ],
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }

  int remainTime(ShuttleDataDto busInfo) {
    if (busInfo.time == null) {
      return 999;
    }
    final DateTime now = DateTime.now();
    final DateTime next = DateTime(
      now.year,
      now.month,
      now.day,
      int.parse(busInfo.time?.substring(0, 2) ?? '0'),
      int.parse(busInfo.time?.substring(2, 4) ?? '0'),
    );

    logger.d(now);
    logger.d(next);

    return next.difference(now).inMinutes;
  }
}
