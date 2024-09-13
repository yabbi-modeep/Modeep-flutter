import 'package:flutter/material.dart';

class OnBoardingTopImageWidget extends StatelessWidget {
  const OnBoardingTopImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(left: 190),
          child: Column(
            children: [
              Image.asset('assets/images/icon/on_boarding/on_boarding.png')
            ],
          ),
        )
      ],
    );
  }
}
