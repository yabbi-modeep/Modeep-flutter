import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modeep/core/modeep.dart';

class PostDetailsCommentNumWidget extends StatefulWidget {
  const PostDetailsCommentNumWidget({super.key});

  @override
  State<PostDetailsCommentNumWidget> createState() => _PostDetailsCommentNumWidgetState();
}

class _PostDetailsCommentNumWidgetState extends State<PostDetailsCommentNumWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 13, bottom: 13),
      child: Row(
        children: [
          SvgPicture.asset('assets/images/icon/post_details/post_details_comment_icon.svg'),
          const SizedBox(width: 6),
          Text('댓글 111', style: MoDeepTextStyle.sub3(color: MoDeepColor.gray100),)
        ],
      ),
    );
  }
}
