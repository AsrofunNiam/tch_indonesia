import 'package:flutter/material.dart';
import 'package:tch_indonesia/src/app/view/page/setting/widget/setting_screen.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
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
