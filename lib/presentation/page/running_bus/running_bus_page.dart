import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/utils/constants.dart';
import 'package:oceanview/injection_container.dart';
import 'package:oceanview/presentation/blocs/view_model/running_bus_bloc/running_bus_bloc.dart';
import 'package:oceanview/presentation/page/running_bus/bus_info_list_view.dart';

class RunningBusPage extends StatelessWidget {
  RunningBusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<RunningBusPageBloc>(),
      child: Scaffold(
        body: CustomScrollView(slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            shadowColor: Colors.transparent,
            backgroundColor: Colors.white.withOpacity(0.4),
            iconTheme: const IconThemeData(color: Color(0xFF3199FF)),
            leadingWidth: 44,
            leading: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.arrow_back_ios_new,
                  size: 24,
                  color: Color(0xFF3199FF),
                ),
              ),
            ),
            title: Text(
              '버스',
              style: textStyleNormal(Theme.of(context).primaryColor, 16),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '190번 버스',
                    style: textStyleBold(
                        Theme.of(context).colorScheme.onPrimary, 24),
                  ),
                  const SizedBox(height: 14),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: const EdgeInsets.only(left: 7),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 1),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '운행시간',
                              style: textStyleNormal(
                                  Theme.of(context).colorScheme.onPrimary, 14),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '04:55 ~ 21:50',
                              style: textStyle600(
                                  Theme.of(context).colorScheme.onPrimary, 14),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 33),
                      Container(
                        padding: const EdgeInsets.only(left: 7),
                        decoration: BoxDecoration(
                          border: Border(
                            left: BorderSide(
                                color: Theme.of(context).primaryColor,
                                width: 1),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '배차간격',
                              style: textStyleNormal(
                                  Theme.of(context).colorScheme.onPrimary, 14),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              '19분',
                              style: textStyle600(
                                  Theme.of(context).colorScheme.onPrimary, 14),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Text(
              AppConstants.station_190.first['nodeName'],
              style: textStyleBold(Theme.of(context).colorScheme.onPrimary, 14),
            ),
            const BusInfoListView(),
          ])),
          const SliverPadding(padding: EdgeInsets.symmetric(vertical: 20))
        ]),
      ),
    );
  }

  // Widget getTextWidgets(List<String> stationList) {
  //   var i = 0;
  //   return Container(
  //     height: SizeConfig.sizeByHeight(3450),
  //     child: Column(
  //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //         crossAxisAlignment: CrossAxisAlignment.center,
  //         children: stationList.map((item) {
  //           i++;
  //           if (i == 1 || i == stationList.length) {
  //             return Container();
  //           } else if (i % 2 == 0) {
  //             return renderLeftSide(item);
  //           } else {
  //             return renderRightSide(item);
  //           }
  //         }).toList()),
  //   );
  // }

  // Widget renderLeftSide(String value) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //           width: SizeConfig.sizeByWidth(150),
  //           alignment: Alignment.centerRight,
  //           child: TextBox(value, 14, FontWeight.w500, Color(0xFF353B45))),
  //       renderCirleWithShadow(5),
  //       Container(
  //         width: SizeConfig.sizeByWidth(150),
  //       ),
  //     ],
  //   );
  // }

  // Widget renderRightSide(String value) {
  //   return Row(
  //     mainAxisAlignment: MainAxisAlignment.center,
  //     children: [
  //       Container(
  //         width: SizeConfig.sizeByWidth(150),
  //       ),
  //       renderCirleWithShadow(5),
  //       Container(
  //           width: SizeConfig.sizeByWidth(150),
  //           alignment: Alignment.centerLeft,
  //           child: TextBox(value, 14, FontWeight.w500, Color(0xFF353B45)))
  //     ],
  //   );
  // }
}
