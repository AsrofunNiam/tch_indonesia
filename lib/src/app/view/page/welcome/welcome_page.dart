import 'package:flutter/material.dart';
import 'package:tch_indonesia/src/app/bloc/theme_mode/theme_mode_bloc.dart';
import 'package:tch_indonesia/src/app/view/page/welcome/widget/welcome_screen.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key, this.themeModeBloc, this.context});

  final ThemeModeBloc? themeModeBloc;
  final BuildContext? context;

// ThemeModeBloc? themeModeBloc;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        // color: Colors.white,
        child: WelcomeScreen(themeModeBloc: themeModeBloc),
      ),
    );
  }
}
