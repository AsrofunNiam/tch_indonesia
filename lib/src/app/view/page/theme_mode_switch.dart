import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tch_indonesia/src/app/bloc/theme_mode/theme_mode_bloc.dart';

class ThemeModeSwitcher extends StatelessWidget {
  const ThemeModeSwitcher({super.key, ThemeModeBloc? themeModeBloc});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeModeBloc(),
      child: BlocBuilder<ThemeModeBloc, ThemeMode>(
        builder: (context, state) {
          return IconButton(
            icon: Icon(state == ThemeMode.dark
                ? Icons.wb_sunny_rounded
                : Icons.nightlight_round),
            onPressed: () {
              BlocProvider.of<ThemeModeBloc>(context)
                  .add(const ThemeModeEvent.started());
            },
          );
        },
      ),
    );
  }
}
