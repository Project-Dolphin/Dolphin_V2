import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_data_dto.dart';
import 'package:oceanview/presentation/page/bus/bus_with_bell.dart';

class BusPageShuttleDetail extends StatelessWidget {
  const BusPageShuttleDetail({required this.data, Key? key}) : super(key: key);

  final List<ShuttleDataDto> data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            border: Border.all(
              color: Theme.of(context).colorScheme.primary,
              width: 2,
            ),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.primary.withOpacity(.15),
                blurRadius: 8,
                offset: const Offset(0, 4.3),
              ),
            ],
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

                  final modifiedList =
                      data.length > 3 ? data.sublist(0, 3) : data;

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ...modifiedList.map((shuffleInfo) {
                        int id = int.parse(
                          '999${modifiedList.indexOf(shuffleInfo)}',
                        );

                        return BusWithBell(
                          minutes: shuffleInfo.remainMinutes ?? 0,
                          id: id,
                        );
                      }),
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
}
