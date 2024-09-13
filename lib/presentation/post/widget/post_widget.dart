import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/modeep.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({super.key});

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: GestureDetector(
        onTap: (){
          context.push('/postDetails');
        },
        child: Container(
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.only(left: 20, top: 38),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('ㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇㄹㅁㄴㅇ', style: MoDeepTextStyle.label3(color: MoDeepColor.white),),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        SvgPicture.asset('assets/images/icon/post/post_comment_icon.svg'),
                        const SizedBox(width: 6),
                        Text('댓글 111', style: MoDeepTextStyle.sub3(color: MoDeepColor.gray100),),
                        const SizedBox(width: 18),
                        Text('2222.22.22', style: MoDeepTextStyle.sub3(color: MoDeepColor.gray100),)
                      ],
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
              Container(width: 390, height: 0.3, color: MoDeepColor.gray200,)
            ],
          ),
        ),
      ),
    );
  }
}
