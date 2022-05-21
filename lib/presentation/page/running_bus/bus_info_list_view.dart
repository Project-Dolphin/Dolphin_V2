import 'package:flutter/material.dart';
import 'package:oceanview/core/utils/constants.dart';

class BusInfoListView extends StatelessWidget {
  const BusInfoListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = (MediaQuery.of(context).size.width - 1) / 2;

    return Stack(children: [
      Positioned.fill(
        left: width,
        right: width,
        child: Container(width: 1, color: Theme.of(context).primaryColor),
      ),
      ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: AppConstants.station_190.length,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Container(
                width: 11,
                height: 11,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).primaryColor),
              );
            }

            return Container(
              width: 5,
              height: 5,
              margin: const EdgeInsets.only(top: 70),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Theme.of(context).primaryColor),
            );
          }),
    ]
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // children: <Widget>[
        //   renderCirleWithShadow(11),
        //   getTextWidgets(stationList),
        //   renderCirleWithShadow(11),
        //   Container(
        //       width: SizeConfig.sizeByWidth(80),
        //       alignment: Alignment.center,
        //       child: TextBox(stationList[stationList.length - 1], 14,
        //           FontWeight.w500, Color(0xFF353B45))),
        // ],
        // ...busListIndex.map((e) => Container(
        //     margin: EdgeInsets.only(
        //         top: (e[0] + 1) * SizeConfig.sizeByHeight(49) -
        //             SizeConfig.sizeByHeight(26)),
        //     width: double.infinity,
        //     height: SizeConfig.sizeByHeight(40),
        //     child: Row(
        //       mainAxisAlignment: MainAxisAlignment.center,
        //       children: [
        //         Container(
        //           width: SizeConfig.sizeByHeight(100),
        //         ),
        //         Image.asset(
        //           'assets/images/busPage/busIcon_190.png',
        //           width: SizeConfig.sizeByHeight(32),
        //           height: SizeConfig.sizeByHeight(32),
        //         ),
        //         Container(
        //           width: SizeConfig.sizeByHeight(100),
        //           // child: Row(
        //           //   mainAxisAlignment: MainAxisAlignment.center,
        //           //   crossAxisAlignment: CrossAxisAlignment.start,
        //           //   children: [
        //           //     TextBox(e[1], 12, FontWeight.w400, Color(0xFF353B45)),
        //           //   ],
        //           // ),
        //         ),
        //       ],
        //     )))
        );
  }
}
