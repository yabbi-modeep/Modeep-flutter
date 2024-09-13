import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class OnBoardingTitleWidget extends StatelessWidget {
  const OnBoardingTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 24, top: 105),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('AI를 향한', style: MoDeepTextStyle.sub2(color: MoDeepColor.white),),
                Text('모딥의 서비스', style: MoDeepTextStyle.sub2(color: MoDeepColor.white),)
              ],
          ),
        )
      ],
    );
  }
}
