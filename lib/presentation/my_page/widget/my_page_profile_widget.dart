import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class MyPageProfileWidget extends StatelessWidget {
  const MyPageProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('김가은', style: MoDeepTextStyle.title1(color: MoDeepColor.white),),
        const SizedBox(width: 124),
        Container(width: 100, height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: MoDeepColor.gray200
            ),
        ),
      ],
    );
  }
}
