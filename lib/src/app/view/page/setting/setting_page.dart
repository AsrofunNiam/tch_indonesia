import 'package:flutter/material.dart';
import 'package:tch_indonesia/src/app/view/page/setting/widget/setting_screen.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key, required this.context});
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 70,
            left: 10,
          ),
          child: SettingScreen.prepare(),
        ),
      ),
    );
  }
}
