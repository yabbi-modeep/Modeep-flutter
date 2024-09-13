import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/modeep.dart';

class QuestionAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const QuestionAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PreferredSize(
            preferredSize: preferredSize,
            child: AppBar(
              automaticallyImplyLeading: false,
              backgroundColor: MoDeepColor.background,
              title: Row(
                children: [
                  GestureDetector(
                    onTap: (){context.pop();},
                    child: SvgPicture.asset('assets/images/icon/post/post_back_arrow_icon.svg'),
                  ),
                  const SizedBox(width: 120),
                  Text('문의하기', style: MoDeepTextStyle.heading1(color: MoDeepColor.white),)
                ],
              ),
            )
        ),
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(68);
}
