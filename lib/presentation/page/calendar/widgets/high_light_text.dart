import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/presentation/page/calendar/dialog/calendar_dialog.dart';

class HighLightText extends StatelessWidget {
  final String text;
  final RegExp highlightRegex;
  final BuildContext context;
  late final TextStyle highlightStyle;
  late final TextStyle nonHighlightStyle;

  HighLightText({
    Key? key,
    required this.text,
    required this.highlightRegex,
    required this.context,
  })  : highlightStyle = textStyleNormal(Theme.of(context).canvasColor, 14)
            .copyWith(backgroundColor: Theme.of(context).primaryColor),
        nonHighlightStyle =
            textStyleNormal(Theme.of(context).colorScheme.onPrimary, 14),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    CalendarDialogState? parent =
        context.findAncestorStateOfType<CalendarDialogState>();
    if (text.isEmpty) {
      return Text(
        "",
        style: nonHighlightStyle,
      );
    }

    List<TextSpan> spans = [];
    int start = 0;
    while (true) {
      final String highlight =
          highlightRegex.stringMatch(text.substring(start)) ?? '';
      if (highlight.isEmpty) {
        // no highlight
        spans.add(_normalSpan(text.substring(start)));
        break;
      }

      parent!.selectedKey.add(key!);
      parent.setPosition();

      final int indexOfHighlight = text.indexOf(highlight, start);

      if (indexOfHighlight == start) {
        // starts with highlight
        spans.add(_highlightSpan(highlight));
        start += highlight.length;
      } else {
        // normal + highlight
        spans.add(_normalSpan(text.substring(start, indexOfHighlight)));
        spans.add(_highlightSpan(highlight));
        start = indexOfHighlight + highlight.length;
      }
    }

    return RichText(
      text: TextSpan(
        style: nonHighlightStyle,
        children: spans,
      ),
    );
  }

  TextSpan _highlightSpan(String content) {
    return TextSpan(text: content, style: highlightStyle);
  }

  TextSpan _normalSpan(String content) {
    return TextSpan(text: content);
  }
}
