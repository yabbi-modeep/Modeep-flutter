import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class ConsultingChatTextFieldWidget extends StatelessWidget {
  const ConsultingChatTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: GestureDetector(
            child: Container(
              padding: const EdgeInsets.only(left: 10),
              width: 356,
              height: 59,
              decoration: BoxDecoration(
                color: MoDeepColor.white,
                borderRadius: BorderRadius.circular(50),
              ),
              child: Center(
                child: TextFormField(
                  textAlign: TextAlign.start,
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide.none,
                    ),
                    hintText: '작성해 주세요',
                    hintStyle: MoDeepTextStyle.cap1(color: MoDeepColor.gray100),
                  ),
                ),
              ),
            ),
          )
        )
      ],
    );
  }
}
