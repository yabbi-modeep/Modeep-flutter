import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/on_boarding/widget/on_boarding_bottom_image_widget.dart';
import 'package:modeep/presentation/on_boarding/widget/on_boarding_bottom_text_widget.dart';
import 'package:modeep/presentation/on_boarding/widget/on_boarding_button_widget.dart';
import 'package:modeep/presentation/on_boarding/widget/on_boarding_title_widget.dart';
import 'package:modeep/presentation/on_boarding/widget/on_boarding_top_image_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoDeepColor.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OnBoardingTitleWidget(),
          OnBoardingTopImageWidget(),
          OnBoardingBottomImageWidget(),
          OnBoardingButtonWidget(),
          OnBoardingBottomTextWidget()
        ],
      ),
    );
  }
}
