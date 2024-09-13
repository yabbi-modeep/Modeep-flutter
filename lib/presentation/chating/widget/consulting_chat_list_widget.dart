import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class ConsultingChatListWidget extends StatefulWidget {
  const ConsultingChatListWidget({super.key});

  @override
  State<ConsultingChatListWidget> createState() => _ConsultingChatListWidgetState();
}

class _ConsultingChatListWidgetState extends State<ConsultingChatListWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 635,
          width: double.infinity,
          decoration: BoxDecoration(
            color: MoDeepColor.background,
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
      ],
    );
  }
}
