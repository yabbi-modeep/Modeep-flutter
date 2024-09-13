import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/component/fonts/modeep_text_style.dart';
import 'package:modeep/core/modeep.dart';

class OnBoardingBottomTextWidget extends StatelessWidget {
  const OnBoardingBottomTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('아직 가입을 안 하셨나요?', style: MoDeepTextStyle.label3(color: MoDeepColor.white),
        ),
        GestureDetector(
          child: TextButton(
            onPressed: (){
              context.push('/signup');
            },
            child: Text('회원가입',
              style: MoDeepTextStyle.label3(color: MoDeepColor.main500)
            ),
          ),
        )
      ],
    );
  }
}
