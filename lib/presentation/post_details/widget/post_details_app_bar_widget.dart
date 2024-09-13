import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/modeep.dart';

class PostDetailsAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const PostDetailsAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: PreferredSize(
            preferredSize: preferredSize,
            child: AppBar(
              automaticallyImplyLeading: false,
              scrolledUnderElevation: 0,
              backgroundColor: MoDeepColor.background,
              title: Row(
                children: [
                  GestureDetector(
                    onTap: (){context.pop();},
                    child: SvgPicture.asset('assets/images/icon/post/post_back_arrow_icon.svg'),
                  ),
                  const SizedBox(width: 130),
                  Text('게시물', style: MoDeepTextStyle.heading1(color: MoDeepColor.white),),
                ],
              ),
            )
        )
    );
  }
  @override
  Size get preferredSize => const Size.fromHeight(61);
}
