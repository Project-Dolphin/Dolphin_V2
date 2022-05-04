import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/network/response/endpoint_calendar_latest/response_calendar_latest_data_dto.dart';

class EventDetail extends StatelessWidget {
  const EventDetail({required this.eventList, Key? key}) : super(key: key);

  final List<LatestData> eventList;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text.rich(
              TextSpan(
                text: eventList.first.content ?? '',
                style: textStyleBold(
                  Theme.of(context).colorScheme.onPrimary,
                  14,
                ),
                children: [
                  TextSpan(
                    text: '까지',
                    style: textStyleNormal(
                      Theme.of(context).colorScheme.onPrimary,
                      12,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Text(
              '${eventList.first.dDay ?? 0}일',
              style: textStyleNormal(
                Theme.of(context).primaryColor,
                30,
              ),
            ),
          ],
        ),
        Text(
          eventList.first.term?.startedAt?.split('-').sublist(1).join('.') ??
              '',
          style: textStyleNormal(
            Theme.of(context).colorScheme.onPrimary,
            16,
          ),
        ),
      ],
    );
  }
}
