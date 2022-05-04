import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class DietBoxDetailShimmer extends StatelessWidget {
  const DietBoxDetailShimmer({
    required this.width,
    Key? key,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: SizedBox(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.center,
              width: 57,
              height: 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 25),
            Container(
              alignment: Alignment.center,
              width: width,
              height: 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 13),
            Container(
              alignment: Alignment.center,
              width: width,
              height: 17,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
