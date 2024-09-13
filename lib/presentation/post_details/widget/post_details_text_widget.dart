import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class PostDetailsTextWidget extends StatelessWidget {
  const PostDetailsTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: [
          Text('dkdljsdlkfdsljdsfljksdfljfsdkfdsl'
              'jkfdskljfdlksdfdfslkjdsfjldsfjkdsfj'
              'lfsdkfsdlf'
              'dkljsdlkjdsfljdfslkjfsdklfsdkljfdsjlksd', style: MoDeepTextStyle.label3(color: MoDeepColor.white),)
        ],
      ),
    );
  }
}
