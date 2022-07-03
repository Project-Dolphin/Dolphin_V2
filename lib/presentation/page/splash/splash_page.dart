import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:oceanview/core/config/r.dart';
import 'package:oceanview/core/utils/constants.dart';
import 'package:oceanview/injection_container.dart';
import 'package:oceanview/presentation/blocs/splash_page_bloc/splash_page_bloc.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => sl<SplashPageBloc>(),
        child: BlocListener<SplashPageBloc, SplashPageState>(
          listener: (context, state) {
            if (state is SplashLoaded) {
              Navigator.pop(context);
              Navigator.pushNamed(
                context,
                AppConstants.HOME_ROUTE,
              );
            }
          },
          child: Center(child: R.image.logo.image(width: 60, height: 65.7)),
        ),
      ),
    );
  }
}
