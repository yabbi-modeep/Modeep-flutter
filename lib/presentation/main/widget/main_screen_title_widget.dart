import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class MainScreenTitleWidget extends StatelessWidget {
  const MainScreenTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
          Text('Modeep의 AI를 즐겨보세요!',
            style: MoDeepTextStyle.heading1(
                color: MoDeepColor.white
            ),
          )
        ],
    );
  }
}
