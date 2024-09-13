import 'package:flutter/material.dart';
import 'package:modeep/core/component/widget/modeep_button.dart';
import 'package:modeep/core/modeep.dart';

class QuestionAddWidget extends StatefulWidget {
  const QuestionAddWidget({super.key});

  @override
  State<QuestionAddWidget> createState() => _QuestionAddWidgetState();
}

class _QuestionAddWidgetState extends State<QuestionAddWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoDeepColor.background,
      body: Padding(padding: const EdgeInsets.only(left: 25, right: 25, top: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('내용', style: MoDeepTextStyle.button1(color: MoDeepColor.white),),
            const SizedBox(height: 11),
            Row(
              children: [
                Container(
                  width: 340,
                  height: 520,
                  decoration: BoxDecoration(
                    border: Border.all(color: MoDeepColor.white),
                    borderRadius: BorderRadius.circular(20)
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.start,
                    maxLines: null,
                    style: MoDeepTextStyle.title2(color: MoDeepColor.white),
                    decoration: InputDecoration(
                      hintText: '문의사항 입력',
                      hintStyle: MoDeepTextStyle.title2(color: MoDeepColor.gray200),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 16, top: 14, right: 16),
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 23),
            MoDeepButton(
                color: MoDeepColor.gray500,
                text: '문의하기'
            )
          ],
        ),
      ),
    );
  }
}
