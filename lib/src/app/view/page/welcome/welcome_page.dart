import 'package:flutter/material.dart';
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
    return Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        // color: Colors.white,
        child: const WelcomeScreen(),
      ),
    );
  }
}
