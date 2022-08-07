import 'package:flutter/material.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/network/response/endpoint_timetable_190/response_depart_bus_info_dto.dart';
import 'package:oceanview/presentation/page/bus/bus_drop_down_button.dart';
import 'package:oceanview/presentation/page/bus/bus_with_bell.dart';

class BusDepartDetail extends StatelessWidget {
  const BusDepartDetail({
    required this.data,
    required this.selectedBusStop,
    required this.busStopList,
    this.busCallBack,
    Key? key,
  }) : super(key: key);

  final List<DepartBusInfo> data;
  final List<BUS_STOP> busStopList;

  final BUS_STOP selectedBusStop;
  final Function(BUS_STOP)? busCallBack;

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
            '190',
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
              BusDropDownButton(
                selectedBusStop: selectedBusStop,
                busStopList: busStopList,
                busCallBack: busCallBack,
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

                  if (data.length == 1) {
                    final int id = int.parse('19001');

                    return BusWithBell(
                      minutes: data.first.remainMinutes ?? 0,
                      id: id,
                    );
                  }

                  return Row(
                    children: [
                      BusWithBell(
                        minutes: data.first.remainMinutes ?? 0,
                        id: int.parse('19001'),
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
                        minutes: data.last.remainMinutes ?? 0,
                        id: int.parse('19011'),
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
