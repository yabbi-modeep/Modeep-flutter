import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class LoginTitleWidget extends StatelessWidget {
  const LoginTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('로그인을 하고', style: MoDeepTextStyle.title1(color: MoDeepColor.white),),
            Text('모딥의 서비스를 사용해보세요!', style: MoDeepTextStyle.title1(color: MoDeepColor.white),)
          ],
        )
    );
  }
}
