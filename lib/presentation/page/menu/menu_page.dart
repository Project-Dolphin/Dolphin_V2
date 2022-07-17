import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/common/date_type_row.dart';
import 'package:oceanview/core/config/enum/menu_enum.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/utils/constants.dart';

import 'custom_divider.dart';
import 'gradient_icon.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 50,
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '설정',
                    style: textStyleBold(
                      Theme.of(context).colorScheme.onPrimary,
                      24,
                    ),
                  ),
                  const DateTypeRow(),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).canvasColor,
            ),
            child: Column(
              children: [
                buildRow(menu: Menu.website, context: context),
                const CustomDivider(),
                buildRow(menu: Menu.phone, context: context),
                const CustomDivider(),
                buildRow(menu: Menu.library, context: context),
              ],
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).canvasColor,
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    AppConstants.SETTING_ROUTE,
                  ),
                  child: buildRow(menu: Menu.setting, context: context),
                ),
                const CustomDivider(),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(
                    context,
                    AppConstants.INFO_ROUTE,
                  ),
                  child: buildRow(menu: Menu.developer, context: context),
                ),
                const CustomDivider(),
                buildRow(menu: Menu.error, context: context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildRow({required Menu menu, required BuildContext context}) {
    return Row(
      children: [
        GradientSvg(
          svg: menu.image,
          size: 28,
          gradient: menu.gradient,
        ),
        const SizedBox(width: 26),
        Text(
          menu.text,
          style: textStyleNormal(
            Theme.of(context).colorScheme.onPrimary,
            15,
          ),
        ),
      ],
    );
  }
}
