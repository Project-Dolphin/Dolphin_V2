import 'package:flutter/material.dart';
import 'package:oceanview/common/logger.dart';
import 'package:oceanview/core/config/enum/bus_stop_enum.dart';
import 'package:oceanview/core/config/r.dart';

class BusDropDownButton extends StatefulWidget {
  BusDropDownButton({
    required this.selectedBusStop,
    required List<BUS_STOP> busStopList,
    this.busCallBack,
    Key? key,
  }) : super(key: key) {
    busParamList = [...busStopList];
    busParamList.removeWhere((element) => element == selectedBusStop);
  }
  late final List<BUS_STOP> busParamList;
  final BUS_STOP selectedBusStop;
  final Function(BUS_STOP)? busCallBack;

  @override
  State<BusDropDownButton> createState() => _BusDropDownButtonState();
}

class _BusDropDownButtonState extends State<BusDropDownButton> {
  // 선택값.

  // 드롭박스.
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();

  static const double _dropdownWidth = 134;
  static const double _dropdownHeight = 35;

  // 드롭다운 생성.
  void _toggleOverlay() {
    if (_overlayEntry == null) {
      _overlayEntry = _customDropdown();
      Overlay.of(context)?.insert(_overlayEntry!);
    } else {
      _overlayEntry?.remove();
      _overlayEntry = null;
    }
  }

  @override
  void dispose() {
    _overlayEntry?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        logger.d(widget.busParamList);
        _toggleOverlay();
      },
      child: CompositedTransformTarget(
        link: _layerLink,
        child: SizedBox(
          width: _dropdownWidth,
          height: _dropdownHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // 선택값.
              Text(
                widget.selectedBusStop.stopName,
                style: textStyleNormal(
                  Theme.of(context).colorScheme.onPrimary,
                  14,
                ),
              ),
              const SizedBox(width: 4),
              R.image.icon_drop_down.svgPictureSize(size: 13),
            ],
          ),
        ),
      ),
    );
  }

  // 드롭다운.
  OverlayEntry _customDropdown() {
    final Size txtSize = _textSize(
      '한글 높이',
      textStyleNormal(
        Theme.of(context).colorScheme.onPrimary,
        14,
      ),
    );

    return OverlayEntry(
      maintainState: true,
      builder: (context) => Positioned(
        width: _dropdownWidth,
        child: CompositedTransformFollower(
          link: _layerLink,
          offset: const Offset(0, _dropdownHeight),
          child: Material(
            color: Theme.of(context).canvasColor,
            child: Container(
              height: 16.0 * (widget.busParamList.length - 1) +
                  txtSize.height *
                      (widget.busParamList.length) *
                      MediaQuery.of(context).textScaleFactor +
                  16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).canvasColor,
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFFA1A1A1).withOpacity(.2),
                    blurRadius: 8,
                    // offset: const Offset(5, 5),
                  ),
                ],
              ),
              child: ListView.separated(
                physics: const ClampingScrollPhysics(),
                padding: const EdgeInsets.symmetric(vertical: 8),
                itemCount: widget.busParamList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: widget.busCallBack != null
                        ? () {
                            widget.busCallBack!(widget.busParamList[index]);
                            _toggleOverlay();
                          }
                        : null,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        widget.busParamList[index].stopName,
                        style: textStyleNormal(
                          Theme.of(context).colorScheme.onPrimary,
                          14,
                        ),
                      ),
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return const Divider(
                    color: Color(0xFF94CCFF),
                    height: 16,
                    thickness: 1,
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

  Size _textSize(String text, TextStyle style) {
    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout(minWidth: 0, maxWidth: double.infinity);

    return textPainter.size;
  }
}
