import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/core/modeep_color.dart';

class PostDetailsLikeWidget extends StatelessWidget {
  const PostDetailsLikeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 290, right: 24, bottom: 13),
      child: GestureDetector(
        child: Container(
          width: 76,
          height: 37,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: MoDeepColor.main100
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: (){},
                child: SvgPicture.asset('assets/images/icon/post_details/post_details_like.svg'),
              ),
              const SizedBox(width: 4),
              Text('공감', style: MoDeepTextStyle.label3(color: MoDeepColor.black),)
            ],
          )
        ),
      ),
    );
  }
}
