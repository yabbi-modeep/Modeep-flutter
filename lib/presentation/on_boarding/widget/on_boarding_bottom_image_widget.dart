import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class OnBoardingBottomImageWidget extends StatelessWidget {
  const OnBoardingBottomImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 65),
        Image.asset('assets/images/icon/on_boarding/on_boarding_bottom.png'),
        Container(width: 392, height: 1, color: MoDeepColor.main100,),
        const SizedBox(height: 20),
      ],
    );
  }
}
