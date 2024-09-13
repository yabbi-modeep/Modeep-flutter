import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modeep/core/modeep.dart';
//import 'package:timeago/timeago.dart';

class PostDetailsCommentWidget extends StatefulWidget {
  const PostDetailsCommentWidget({super.key});

  @override
  State<PostDetailsCommentWidget> createState() => _PostDetailsCommentWidgetState();
}

class _PostDetailsCommentWidgetState extends State<PostDetailsCommentWidget> {

  final scrollController = ScrollController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 30),
      child: ListView(
        controller: scrollController,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Row(
            children: [
              Text(
                '조조조',
                style: MoDeepTextStyle.sub3(color: MoDeepColor.gray100),
              ),
              const SizedBox(width: 10),
              Container(
                width: 1,
                height: 13,
                color: MoDeepColor.white,
              ),
              const SizedBox(width: 10),
              Text(
                '1시간 전',
                style: MoDeepTextStyle.sub3(color: MoDeepColor.gray100),
              ),
            ],
          ),
          const SizedBox(height: 17),
          Text(
            '네네네ㅔ네네네네네ㅔ네네네네네네네네',
            style: MoDeepTextStyle.label3(color: MoDeepColor.white),
          ),
          const SizedBox(height: 14),
          GestureDetector(
            child: Row(
              children: [
                SvgPicture.asset('assets/images/icon/post_details/post_details_comment_like_icon.svg'),
                const SizedBox(width: 6),
                Text(
                  '공감',
                  style: MoDeepTextStyle.sub3(color: MoDeepColor.white),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
