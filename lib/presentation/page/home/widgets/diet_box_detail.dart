import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/network/response/endpoint_diet_society_today/response_diet_society_detail_dto.dart';

class DietBoxDetail extends StatelessWidget {
  const DietBoxDetail({
    required this.type,
    required this.data,
    required this.width,
    Key? key,
  }) : super(key: key);

  final String type;
  final DietDetail data;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                type,
                style: textStyleBold(
                  Theme.of(context).colorScheme.onPrimary,
                  16,
                ),
              ),
              const SizedBox(width: 6),
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  data.type,
                  style: textStyleNormal(
                    Theme.of(context).primaryColor,
                    14,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 12),
          data.menus.isNotEmpty
              ? Wrap(
                  children: [
                    ...data.menus.map((e) => Text(
                          e,
                          style: textStyleNormal(
                              Theme.of(context).colorScheme.onPrimary, 13),
                        )),
                  ],
                )
              : SizedBox(
                  height: 50,
                  child: Text(
                    // TODO : add Empty Menu String
                    '식단이 없어요',
                    style: textStyleNormal(
                        Theme.of(context).colorScheme.onPrimary, 13),
                  ),
                ),
        ],
      ),
    );
  }
}
