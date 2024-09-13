import 'package:flutter/material.dart';
import 'package:modeep/core/modeep_color.dart';
import 'package:modeep/presentation/main/widget/main_screen_app_bar_widget.dart';
import 'package:modeep/presentation/main/widget/main_screen_bottom_service_widget.dart';
import 'package:modeep/presentation/main/widget/main_screen_service_title_widget.dart';
import 'package:modeep/presentation/main/widget/main_screen_service_widget.dart';
import 'package:modeep/presentation/main/widget/main_screen_slider_widget.dart';
import 'package:modeep/presentation/main/widget/main_screen_title_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoDeepColor.background,
      body: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MainScreenAppBarWidget(),
            const SizedBox(height: 18),
            MainScreenTitleWidget(),
            const SizedBox(height: 19),
            MainScreenSliderWidget(),
            const SizedBox(height: 18),
            MainScreenServiceTitleWidget(),
            const SizedBox(height: 24),
            MainScreenServiceWidget(),
            const SizedBox(height: 40),
            MainScreenBottomServiceWidget()
          ],
        ),
      ),
    );
  }
}
