import 'package:flutter/material.dart';
import 'package:oceanview/core/config/r.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        title: Text(
          '앱 및 개발자 정보',
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '앱 버전',
                    style: textStyleNormal(
                      Theme.of(context).colorScheme.onPrimary,
                      15,
                    ),
                  ),
                  buildDivider(),
                  Text(
                    'OceanView 3.0.0',
                    style: textStyleNormal(
                      Theme.of(context).colorScheme.onPrimary,
                      14,
                    ),
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '개발자 정보',
                    style: textStyleNormal(
                      Theme.of(context).colorScheme.onPrimary,
                      14,
                    ),
                  ),
                  buildDivider(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildDeveloperInfo(
                        role: 'Manager / Designer',
                        name: '조성우',
                        context: context,
                      ),
                      const SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          buildDeveloperInfo(
                            role: 'Developer',
                            name: '김덕현',
                            context: context,
                          ),
                          buildDeveloperInfo(
                            role: 'Developer',
                            name: '이시형',
                            context: context,
                          ),
                          buildDeveloperInfo(
                            role: 'Developer',
                            name: '한채연',
                            context: context,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 30),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).canvasColor,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '문의사항',
                    style: textStyleNormal(
                      Theme.of(context).colorScheme.onPrimary,
                      15,
                    ),
                  ),
                  buildDivider(),
                  Text(
                    'swch0516@naver.com',
                    style: textStyleNormal(
                      Theme.of(context).colorScheme.onPrimary,
                      14,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }

  buildDeveloperInfo(
      {required String role,
      required String name,
      required BuildContext context}) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      decoration: BoxDecoration(
          border: Border(
              left:
                  BorderSide(color: Theme.of(context).primaryColor, width: 1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            role,
            style: textStyleNormal(
              Theme.of(context).colorScheme.onPrimary,
              14,
            ),
          ),
          const SizedBox(height: 2),
          Text(
            name,
            style: textStyle600(
              Theme.of(context).colorScheme.onPrimary,
              14,
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
        const SizedBox(height: 12),
      ],
    );
  }
}
