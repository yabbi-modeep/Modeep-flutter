import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class PostDetailsTitleWidget extends StatefulWidget {
  const PostDetailsTitleWidget({super.key});

  @override
  State<PostDetailsTitleWidget> createState() =>  _PostDetailsTitleWidgetState();
}

class _PostDetailsTitleWidgetState extends State<PostDetailsTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: const EdgeInsets.only(left: 24, top: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('dkdkdkdkdkdkkdkd', style: MoDeepTextStyle.label2(color: MoDeepColor.white),),
              const SizedBox(height: 8),
              Row(
                children: [
                  Text('구구구', style: MoDeepTextStyle.sub3(color: MoDeepColor.gray100),),
                  const SizedBox(width: 10),
                  Container(width: 1, height: 13, color : MoDeepColor.white,),
                  const SizedBox(width: 10),
                  Text('1시간 전', style: MoDeepTextStyle.sub3(color: MoDeepColor.main50 ),)
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
