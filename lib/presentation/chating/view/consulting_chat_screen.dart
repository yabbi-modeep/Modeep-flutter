import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/chating/widget/consulting_chat_app_bar_widget.dart';
import 'package:modeep/presentation/chating/widget/consulting_chat_list_widget.dart';
import 'package:modeep/presentation/chating/widget/consulting_chat_text_field_widget.dart';

class ConsultingChatScreen extends StatefulWidget {
  const ConsultingChatScreen({super.key});

  @override
  State<ConsultingChatScreen> createState() => _ConsultingChatScreenState();
}

class _ConsultingChatScreenState extends State<ConsultingChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ConsultingChatAppBarWidget(),
      backgroundColor: MoDeepColor.main300,
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                ConsultingChatListWidget(),
                const SizedBox(height: 13),
                ConsultingChatTextFieldWidget()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
