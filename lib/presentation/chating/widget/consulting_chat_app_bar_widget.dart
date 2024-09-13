import 'package:flutter/material.dart';
import 'package:modeep/core/modeep_color.dart';

class ConsultingChatAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  const ConsultingChatAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: MoDeepColor.background,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/icon/chat/chat_main_icon.png')
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
