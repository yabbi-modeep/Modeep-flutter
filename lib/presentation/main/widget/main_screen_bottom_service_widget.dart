import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/component/fonts/modeep_text_style.dart';
import 'package:modeep/core/modeep_color.dart';
import 'package:modeep/core/router.dart';

class MainScreenBottomServiceWidget extends StatefulWidget {
  const MainScreenBottomServiceWidget({super.key});

  @override
  State<MainScreenBottomServiceWidget> createState() => _MainScreenBottomServiceWidgetState();
}

class _MainScreenBottomServiceWidgetState extends State<MainScreenBottomServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 83,
      decoration: BoxDecoration(
        gradient: MoDeepColor.gradient1,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){context.push('/question');},
              child: Column(
                children: [
                  Image.asset('assets/images/icon/main/main_question_icon.png'),
                  const SizedBox(height: 3),
                  Text('기능 문의', style: MoDeepTextStyle.title3(color: MoDeepColor.white),)
                ],
              ),
            ),
            GestureDetector(
              onTap: (){context.push('/post');},
              child: Column(
                  children: [
                   Image.asset('assets/images/icon/main/main_post_icon.png'),
                   const SizedBox(height: 10),
                   Text('게시판', style: MoDeepTextStyle.title3(color: MoDeepColor.white),)
                 ],
               ),
            ),
            GestureDetector(
              onTap: (){context.push('/MyPage');},
              child: Column(
                children: [
                  Image.asset('assets/images/icon/main/main_profile_icon.png'),
                  const SizedBox(height: 4),
                  Text('마이 페이지', style: MoDeepTextStyle.title3(color: MoDeepColor.white),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
