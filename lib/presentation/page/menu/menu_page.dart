import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:oceanview/core/config/enum/menu_enum.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/utils/constants.dart';

import 'gradient_icon.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 70,
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '식단',
                      style: textStyleBold(
                        Theme.of(context).colorScheme.onPrimary,
                        24,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          DateFormat('M.d EEEE', 'ko_KR')
                              .format(DateTime.now()),
                          style: textStyleNormal(
                            Theme.of(context).colorScheme.onPrimary,
                            12,
                          ),
                        ),
                        const SizedBox(width: 6),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            vertical: 2,
                            horizontal: 4,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            color: Theme.of(context).canvasColor,
                          ),
                          child: Text(
                            '사라져야함',
                            style: textStyleNormal(
                              Theme.of(context).colorScheme.primary,
                              11,
                            ),
                          ),
                        ),
                      ],
                    ),
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
                  buildDivider(),
                  buildRow(menu: Menu.phone, context: context),
                  buildDivider(),
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
                  buildDivider(),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(
                      context,
                      AppConstants.INFO_ROUTE,
                    ),
                    child: buildRow(menu: Menu.developer, context: context),
                  ),
                  buildDivider(),
                  buildRow(menu: Menu.error, context: context),
                ],
              ),
            ),
          ],
        ),
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

  buildDivider() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          height: 0.5,
          color: const Color(0xFFCECECE),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
