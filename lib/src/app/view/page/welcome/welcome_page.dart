import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tch_indonesia/src/app/bloc/theme_mode/theme_mode_bloc.dart';
import 'package:tch_indonesia/src/app/view/page/welcome/widget/welcome_screen.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  // ThemeModeBloc? themeModeBloc;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeModeBloc(),
      child: Material(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(20),
          color: Colors.white,
          child: const WelcomeScreen(),
        ),
      ),
    );
  }
}
