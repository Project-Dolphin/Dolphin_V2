import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';

import 'gradient_icon.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Theme.of(context).canvasColor,
            ),
            child: Column(
              children: [
                Row(
                  children: [
                    GradientSvg(
                      svg:
                          R.image.icon_school_web_fill.svgPictureSize(size: 28),
                      size: 28,
                      gradient: const LinearGradient(
                        colors: [Color(0xFF1E7Aff), Color(0xFF009DF5)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    const SizedBox(width: 26),
                    Text(
                      '학교 주요 홈페이지',
                      style: textStyleNormal(
                        Theme.of(context).colorScheme.onPrimary,
                        15,
                      ),
                    ),
                  ],
                ),
                buildDivider(),
                Row(
                  children: [
                    GradientSvg(
                      svg:
                          R.image.icon_phone_book_fill.svgPictureSize(size: 28),
                      size: 28,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF29B805),
                          Color(0xFF67E107),
                          Color(0xFF6CF500),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    const SizedBox(width: 26),
                    Text(
                      '학교 주요 홈페이지',
                      style: textStyleNormal(
                        Theme.of(context).colorScheme.onPrimary,
                        15,
                      ),
                    ),
                  ],
                ),
                buildDivider(),
                Row(
                  children: [
                    GradientSvg(
                      svg: R.image.icon_library_fill.svgPictureSize(size: 28),
                      size: 28,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFFFFCA42),
                          Color(0xFFFFB13C),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    const SizedBox(width: 26),
                    Text(
                      '학교 주요 홈페이지',
                      style: textStyleNormal(
                        Theme.of(context).colorScheme.onPrimary,
                        15,
                      ),
                    ),
                  ],
                ),
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
                Row(
                  children: [
                    GradientSvg(
                      svg: R.image.icon_setting_fill.svgPictureSize(size: 28),
                      size: 28,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF585858),
                          Color(0xFF8A8A8A),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    const SizedBox(width: 26),
                    Text(
                      '학교 주요 홈페이지',
                      style: textStyleNormal(
                        Theme.of(context).colorScheme.onPrimary,
                        15,
                      ),
                    ),
                  ],
                ),
                buildDivider(),
                Row(
                  children: [
                    GradientSvg(
                      svg: R.image.icon_developer_fill.svgPictureSize(size: 28),
                      size: 28,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF9C1Eff),
                          Color(0xFFAC85FF),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    const SizedBox(width: 26),
                    Text(
                      '학교 주요 홈페이지',
                      style: textStyleNormal(
                        Theme.of(context).colorScheme.onPrimary,
                        15,
                      ),
                    ),
                  ],
                ),
                buildDivider(),
                Row(
                  children: [
                    GradientSvg(
                      svg:
                          R.image.icon_error_send_fill.svgPictureSize(size: 28),
                      size: 28,
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF1E7AFF),
                          Color(0xFF009DF5),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    const SizedBox(width: 26),
                    Text(
                      '학교 주요 홈페이지',
                      style: textStyleNormal(
                        Theme.of(context).colorScheme.onPrimary,
                        15,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
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
        const SizedBox(height: 10),
      ],
    );
  }
}
