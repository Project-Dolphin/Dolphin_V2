import 'package:flutter/material.dart';
import 'package:oceanview/common/decorated_container.dart';
import 'package:oceanview/core/config/r.dart';

class DietGridView extends StatelessWidget {
  const DietGridView({
    required this.type,
    required this.dietData,
    this.timeLimit,
    Key? key,
  }) : super(key: key);

  final String type;
  final List<String> dietData;
  final String? timeLimit;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width * 0.893 - 60;

    return Column(
      children: [
        DecoratedContainer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        type,
                        style:
                            textStyleMedium(Theme.of(context).primaryColor, 14),
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
                                color: Theme.of(context).colorScheme.background,
                              ),
                              child: Text(
                                timeLimit!,
                                style: textStyleMedium(
                                    Theme.of(context).primaryColor, 12),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        // TODO: add const String
                        '전체식단보기',
                        style: textStyleNormal(
                            Theme.of(context).colorScheme.onPrimary, 10),
                      ),
                      const SizedBox(width: 3),
                      R.image.icon_arrow_right.svgPicture(width: 4, height: 7),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 14),
              dietData.isNotEmpty
                  ? Wrap(
                      runSpacing: 12,
                      children: [
                        ...dietData.map((e) => SizedBox(
                              width: width / 2,
                              child: Text(
                                e,
                                style: textStyle600(
                                  Theme.of(context).colorScheme.onPrimary,
                                  14,
                                ),
                              ),
                            )),
                      ],
                    )
                  : Text(
                      '식단이 없어요',
                      style: textStyle600(
                        Theme.of(context).colorScheme.onPrimary,
                        14,
                      ),
                    )
            ],
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
