import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/post/widget/post_app_bar_widget.dart';
import 'package:modeep/presentation/post/widget/post_widget.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoDeepColor.background,
      appBar: const PostAppBarWidget(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(width: 390, height: 1, color: MoDeepColor.white,),
          PostWidget()
        ],
      ),
    );
  }
}
