import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/enum/theme_enum.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/setting_bloc/setting_bloc.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          '앱 설정',
          style: textStyleBold(Theme.of(context).colorScheme.onPrimary, 16),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 28,
            horizontal: 20,
          ),
          child: Column(children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).canvasColor,
              ),
              child: Column(
                children: [
                  buildRow(menu: '버스 알림', context: context),
                  buildDivider(),
                  buildRow(menu: '일정 알림', context: context),
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
                  buildThemeRow(theme: CustomTheme.light, context: context),
                  buildDivider(),
                  buildThemeRow(theme: CustomTheme.dark, context: context),
                  buildDivider(),
                  buildThemeRow(theme: CustomTheme.system, context: context),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  buildRow({required String menu, required BuildContext context}) {
    return Row(
      children: [
        Text(
          menu,
          style: textStyleNormal(
            Theme.of(context).colorScheme.onPrimary,
            15,
          ),
        ),
      ],
    );
  }

  buildThemeRow({required CustomTheme theme, required BuildContext context}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          theme.text,
          style: textStyleNormal(
            Theme.of(context).colorScheme.onPrimary,
            15,
          ),
        ),
        GestureDetector(
          onTap: () => context.read<SettingBloc>().add(
                ThemeChanged(selectedTheme: theme),
              ),
          child: BlocBuilder<SettingBloc, SettingState>(
            builder: ((context, state) {
              return Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: state.theme == theme
                        ? Colors.transparent
                        : const Color(0xFFCECECE),
                    width: 1,
                  ),
                  color: state.theme == theme
                      ? Theme.of(context).primaryColor
                      : Colors.transparent,
                ),
              );
            }),
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
