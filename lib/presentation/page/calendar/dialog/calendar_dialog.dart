import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_data_dto.dart';
import 'package:oceanview/core/network/response/endpoint_calendar/response_calendar_term_dto.dart';
import 'package:oceanview/presentation/page/calendar/widgets/high_light_text.dart';

import 'calendar_dialog_header_delegate.dart';

class CalendarDialog extends StatefulWidget {
  const CalendarDialog({required this.eventList, Key? key}) : super(key: key);
  final List<WeekdayData> eventList;

  @override
  CalendarDialogState createState() => CalendarDialogState(); // State 생성.
}

class CalendarDialogState extends State<CalendarDialog> {
  String highString = '';
  List<GlobalKey> key = [];
  List selectedKey = [];
  List<double> positions = [];
  int index = 0;
  final scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < widget.eventList.length; i++) {
      key.add(GlobalKey());
    }
  }

  void setPosition() {
    for (var i in selectedKey) {
      RenderBox box = i.currentContext.findRenderObject();
      Offset position =
          box.localToGlobal(Offset.zero); //this is global position
      double y = position.dy;
      positions.add(y);
    }

    positions.sort();
    positions = positions.toSet().toList();

    logger.d(positions);
  }

  void jumpToKeyword() {
    scrollController.jumpTo(positions[index++] - 100);
    print(positions[index - 1]);
    if (index >= positions.length) index = 0;
  }

  @override
  Widget build(BuildContext context) {
    int initMonth =
        int.parse(widget.eventList.first.term?.startedAt.split('-')[1] ?? '0');

    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: CustomScrollView(
            shrinkWrap: true,
            controller: scrollController,
            scrollDirection: Axis.vertical,
            slivers: [
              SliverPersistentHeader(
                pinned: true,
                delegate: SliverAppBarDelegate(
                  minHeight: 70.0,
                  maxHeight: 70.0,
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: R.image.icon_chevron_left
                            .svgPicture(width: 10, height: 16),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                            textAlignVertical: TextAlignVertical.center,
                            style: textStyleNormal(R.color.contents00, 14),
                            onSubmitted: (value) {
                              selectedKey.clear();
                              positions.clear();
                              setState(() {
                                highString = value;
                              });
                            },
                            autofocus: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              isDense: true,
                              hintText: '학사일정 검색',
                              hintStyle:
                                  textStyleNormal(R.color.contents02, 14),
                              contentPadding: const EdgeInsets.all(0),
                            ),
                          ),
                        ),
                      ),
                      MaterialButton(
                        onPressed: jumpToKeyword,
                        child: Text('button'),
                      ),
                    ],
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate([
                  Column(
                    children: [
                      Text(
                        '$initMonth월',
                        style: textStyle600(Theme.of(context).primaryColor, 20),
                      ),
                      const SizedBox(height: 10),
                      ...widget.eventList.map((event) {
                        int eventMonth = getMonth(event.term);
                        if (eventMonth != initMonth) {
                          initMonth = eventMonth;

                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 17),
                              Divider(
                                thickness: 1,
                                color: Theme.of(context).primaryColor,
                              ),
                              const SizedBox(height: 20),
                              Text(
                                '$initMonth월',
                                style: textStyle600(
                                    Theme.of(context).primaryColor, 20),
                              ),
                              const SizedBox(height: 10),
                              _buildWeekDataRow(event),
                            ],
                          );
                        }

                        return _buildWeekDataRow(event);
                      }),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _buildWeekDataRow(WeekdayData data) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Row(
                children: [
                  Text(
                    termToString(data.term?.startedAt),
                    style: textStyleNormal(
                      Theme.of(context).colorScheme.onPrimary,
                      14,
                    ),
                  ),
                  if (data.term?.startedAt != data.term?.endedAt)
                    Text(' ~ ' + termToString(data.term?.endedAt)),
                ],
              ),
            ),
            Expanded(
              child: HighLightText(
                text: data.content,
                highlightRegex: RegExp(highString),
                context: context,
                key: key[widget.eventList.indexOf(data)],
              ),
            ),
          ],
        ),
        SizedBox(height: 13),
      ],
    );
  }

  int getMonth(CalendarTerm? term) {
    return int.parse(
      term?.startedAt.split('-')[1] ?? '0',
    );
  }

  String termToString(String? date) {
    if (date == null) return '1.01';
    List<String> splitDate = date.split('-');

    int year = int.parse(splitDate[0]);
    int month = int.parse(splitDate[1]);
    int day = int.parse(splitDate[2]);

    DateTime targetDate = DateTime(year, month, day);

    return DateFormat('M.dd(EE)', 'ko_KR').format(targetDate);
  }
}
