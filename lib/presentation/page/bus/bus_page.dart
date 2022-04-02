import 'package:flutter/material.dart';

class BusPage extends StatelessWidget {
  const BusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: const Center(
        child: Text(
          'Bus View',
        ),
      ),
    );
  }
}
