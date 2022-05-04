import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NoticeDetailShimmer extends StatelessWidget {
  const NoticeDetailShimmer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (_, __) => Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          width: double.infinity,
          height: 17,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.white,
          ),
        ),
        itemCount: 6,
      ),
    );
  }
}
