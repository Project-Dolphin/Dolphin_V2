import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/network/response/endpoint_businfo_specific/response_businfo_specific_data_dto.dart';
import 'package:oceanview/presentation/page/bus/bus_with_bell.dart';

class BusDetail extends StatelessWidget {
  const BusDetail({required this.data, Key? key}) : super(key: key);

  final NodeInfoData data;

  @override
  Widget build(BuildContext context) {
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
            data.lineno ?? '0',
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
                  if (data.min1 == null && data.min2 == null) {
                    return Text(
                      '버스가 없어요',
                      style: textStyleBold(
                        Theme.of(context).colorScheme.onPrimary,
                        18,
                      ),
                      softWrap: true,
                    );
                  }

                  if (data.min1 != null && data.min2 == null) {
                    final int id = int.parse('${data.lineno}0');

                    return BusWithBell(
                      minutes: data.min1!,
                      id: id,
                    );
                  }

                  return Row(
                    children: [
                      BusWithBell(
                        minutes: data.min1!,
                        id: int.parse('${data.lineno}0'),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Divider(
                          color: Theme.of(context).primaryColor,
                          thickness: 1,
                        ),
                      ),
                      const SizedBox(width: 20),
                      BusWithBell(
                        minutes: data.min2!,
                        id: int.parse('${data.lineno}0'),
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
}
