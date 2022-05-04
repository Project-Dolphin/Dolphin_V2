import 'package:flutter/material.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/network/response/endpoint_shuttle/response_shuttle_detail_dto.dart';
import 'package:shimmer/shimmer.dart';

class ShuttleBusDetailShimmer extends StatelessWidget {
  const ShuttleBusDetailShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Row(
        children: [
          Container(
            alignment: Alignment.center,
            width: 50,
            height: 50,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 19),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 70,
                  height: 17,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                SizedBox(height: 16),
                Container(
                  width: double.infinity,
                  height: 17,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int remainTime(ShuttleDetailDto busInfo) {
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
