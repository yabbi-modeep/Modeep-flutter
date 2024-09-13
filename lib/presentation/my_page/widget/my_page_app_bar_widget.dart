import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class MyPageAppBarWidget extends StatelessWidget {
  const MyPageAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(
          onTap: (){context.pop();},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: const EdgeInsets.only(left: 18, top: 5),
                child: SvgPicture.asset('assets/images/icon/post/post_back_arrow_icon.svg'),
              ),
            ],
          )
        )
    );
  }
}
