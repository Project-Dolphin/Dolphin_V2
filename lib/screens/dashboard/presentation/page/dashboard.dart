import 'dart:ui';

import 'package:flutter/material.dart';

/*
Stack 구조로 관리하여야 할 듯
import 'package:oceanview/screens/dashboard/presentation/page/widgets/floating_nav_bar.dart';
*/
class DashBoard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.transparent,
        elevation: 0,
        title: const MainTitle(),
      ),
      extendBody: true,
      body: Stack(
        children: [
          Positioned(
            bottom: 20,
            child: Container(
              width: MediaQuery.of(context).size.width - 24,
              margin: const EdgeInsets.symmetric(horizontal: 12),
              padding:
                  const EdgeInsets.only(bottom: 5, top: 2, left: 22, right: 22),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF1D85FF),
                    Color(0xFF3598F9),
                  ],
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /*
                  TODO:
                  Select 아이템 처리 해야함
                  Indicator 보임 여부 및 애니메이션 사용 여부
                  */
                  FloatingBottomItem(),
                  FloatingBottomItem(),
                  FloatingBottomItem(),
                  FloatingBottomItem(),
                  FloatingBottomItem(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class FloatingBottomItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 36,
      height: 47,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            alignment: Alignment.center,
            height: 3,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(31.82),
                color: Theme.of(context).primaryColor),
          ),
          Column(
            children: const [
              Icon(
                Icons.home,
                size: 20,
              ),
              SizedBox(height: 4),
              Text('홈', style: TextStyle(fontSize: 8, color: Color(0xFFFFFFFF)))
            ],
          )
        ],
      ),
    );
  }
}

// TODO : Bloc을 통해 선택 된 페이지의 인덱스를 관리할 것
class MainTitle extends StatelessWidget {
  const MainTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) =>
          const LinearGradient(colors: [Color(0xFF1E7AFF), Color(0xFF009DF5)])
              .createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text('OceanView',
          style: Theme.of(context)
              .textTheme
              .headline5!
              .copyWith(fontWeight: FontWeight.w700)),
    );
  }
}

class Title extends StatelessWidget {
  const Title({required int index, Key? key})
      : _selectedIndex = index,
        super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  _buildMainTitle(BuildContext context) {
    return Text('OceanView', style: Theme.of(context).textTheme.headline5);
  }
}
