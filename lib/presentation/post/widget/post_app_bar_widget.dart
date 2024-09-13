import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/modeep.dart';

class PostAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  const PostAppBarWidget({super.key});

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
                    behavior: HitTestBehavior.translucent,
                    onTap: () {
                      context.pop('/Main');
                    },
                    child: SvgPicture.asset('assets/images/icon/post/post_back_arrow_icon.svg')
                  ),
                  const SizedBox(width: 130),
                  Text('게시판', style: MoDeepTextStyle.heading1(color: MoDeepColor.white),)
                ],
              ),
            )
        )
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(61);
}
