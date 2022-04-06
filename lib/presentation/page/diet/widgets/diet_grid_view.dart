import 'package:flutter/material.dart';

class DietGridView extends StatelessWidget {
  const DietGridView({required this.type, required this.dietData, Key? key})
      : super(key: key);

  final String type;
  final List<String>? dietData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.green),
      padding: const EdgeInsets.symmetric(
        vertical: 14,
        horizontal: 20,
      ),
      child: Column(
        children: [
          Text('기숙사 $type'),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: dietData?.length ?? 0,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 4.0,
            ),
            itemBuilder: (BuildContext context, int index) {
              //item 의 반목문 항목 형성
              return Text(
                dietData?[index] ?? '',
              );
            },
          ),
        ],
      ),
    );
  }
}
