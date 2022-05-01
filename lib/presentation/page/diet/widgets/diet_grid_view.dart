import 'package:flutter/material.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/core/config/r.dart';

class DietGridView extends StatelessWidget {
  const DietGridView(
      {required this.type, required this.dietData, this.timeLimit, Key? key})
      : super(key: key);

  final String type;
  final List<String> dietData;
  final String? timeLimit;

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width * 0.893 - 60) / 2;

    return DecoratedContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                type,
                style: textStyleMedium(Theme.of(context).primaryColor, 14),
              ),
              const SizedBox(width: 10),
              timeLimit != null
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                        horizontal: 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      child: Text(
                        timeLimit!,
                        style:
                            textStyleNormal(Theme.of(context).primaryColor, 12),
                      ),
                    )
                  : const SizedBox(),
            ],
          ),
          const SizedBox(height: 14),
          Wrap(
            runSpacing: 12,
            children: [
              ...dietData.map((e) => SizedBox(
                    width: width,
                    child: Text(
                      e,
                      style: textStyle600(
                          Theme.of(context).colorScheme.onPrimary, 14),
                    ),
                  )),
            ],
          ),
          // GridView.builder(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: dietData?.length ?? 0,
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 2,
          //     // mainAxisSpacing: 5,
          //     // crossAxisSpacing: 30,
          //     childAspectRatio: 4.0,
          //   ),
          //   itemBuilder: (BuildContext context, int index) {
          //     //item 의 반목문 항목 형성
          //     return Text(
          //       dietData?[index] ?? '',
          //     );
          //   },
          // ),
        ],
      ),
    );
  }
}
