import 'package:flutter/material.dart';
import 'package:modeep/core/component/fonts/modeep_text_style.dart';
import 'package:modeep/core/modeep.dart';

class SignUpTitleWidget extends StatelessWidget {
  const SignUpTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 72),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('회원가입 하고', style: MoDeepTextStyle.title1(color: MoDeepColor.white),),
            Text('모딥의 서비스를 사용해보세요!', style: MoDeepTextStyle.title1(color: MoDeepColor.white),)
          ],
        ),
      ),
    );
  }
}
