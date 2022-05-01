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
              Text(
                data.type,
                style: textStyleNormal(
                  Theme.of(context).primaryColor,
                  12,
                ),
              ),
            ],
          ),
          Wrap(
            children: [
              ...(data.menus.length > 8 ? data.menus.sublist(0, 8) : data.menus)
                  .map((e) => Text(e)),
            ],
          ),
        ],
      ),
    );
  }
}
