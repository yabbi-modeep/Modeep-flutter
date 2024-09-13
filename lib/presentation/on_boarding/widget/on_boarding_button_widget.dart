import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/component/widget/modeep_button.dart';
import 'package:modeep/core/modeep.dart';

class OnBoardingButtonWidget extends StatelessWidget {
  const OnBoardingButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 28, right: 28),
          child: Center(
            child: GestureDetector(
              child: MoDeepButton(
                backgroundColor: MoDeepColor.main600,
                color: MoDeepColor.black,
                text: '로그인',
              ),
              onTap: (){
                context.push('/login');
              },
            )
          )
        )
      ],
    );
  }
}
