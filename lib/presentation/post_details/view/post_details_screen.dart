import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/post_details/widget/post_details_app_bar_widget.dart';
import 'package:modeep/presentation/post_details/widget/post_details_comment_num_widget.dart';
import 'package:modeep/presentation/post_details/widget/post_details_comment_widget.dart';
import 'package:modeep/presentation/post_details/widget/post_details_image_widget.dart';
import 'package:modeep/presentation/post_details/widget/post_details_like_widget.dart';
import 'package:modeep/presentation/post_details/widget/post_details_text_widget.dart';
import 'package:modeep/presentation/post_details/widget/post_details_title_widget.dart';

class PostDetailsScreen extends StatefulWidget {
  const PostDetailsScreen({super.key});

  @override
  State<PostDetailsScreen> createState() => _PostDetailsScreenState();
}

class _PostDetailsScreenState extends State<PostDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: MoDeepColor.background,
      appBar: const PostDetailsAppBarWidget(),
      body: SingleChildScrollView(
        child: Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 390, height: 1, color: MoDeepColor.white,),
              const PostDetailsTitleWidget(),
              const PostDetailsTextWidget(),
              const PostDetailsImageWidget(),
              const PostDetailsLikeWidget(),
              Container(width: 390, height: 0.3, color : MoDeepColor.gray200),
              const PostDetailsCommentNumWidget(),
              Container(width: 390, height: 5, color: MoDeepColor.gray100,),
              const PostDetailsCommentWidget(),
              Container(width: 390, height: 0.3, color: MoDeepColor.gray200,)
            ],
          ),
        ),

      ),
    );
  }
}
