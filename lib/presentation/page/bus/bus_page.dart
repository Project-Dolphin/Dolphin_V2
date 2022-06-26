import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/presentation/blocs/view_model/bus/line_8_bloc/line_8_bloc.dart';

class BusPage extends StatelessWidget {
  const BusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.blue,
      child: Column(
        children: [
          BlocBuilder<Line8Bloc, Line8State>(builder: ((context, state) {
            return const Text('');
          })),
        ],
      ),
    );
  }
}
