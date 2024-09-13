import 'package:flutter/material.dart';

class PostDetailsImageWidget extends StatelessWidget {
  const PostDetailsImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 13),
      child: Column(
        children: [
          Image.asset('assets/images/icon/post_details/Post_img.png')
        ],
      ),
    );
  }
}

