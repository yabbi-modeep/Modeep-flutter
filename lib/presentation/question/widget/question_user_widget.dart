import 'package:flutter/material.dart';
import 'package:modeep/core/component/fonts/modeep_text_style.dart';
import 'package:modeep/core/modeep_color.dart';

class QuestionUserWidget extends StatefulWidget {
  const QuestionUserWidget({super.key});

  @override
  State<QuestionUserWidget> createState() => _QuestionUserWidgetState();
}

class _QuestionUserWidgetState extends State<QuestionUserWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoDeepColor.background,
      body: SafeArea(
        child: GestureDetector(
          onTap: (){},
          child: Padding(padding: const EdgeInsets.only(left: 22, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('문의내용', style: MoDeepTextStyle.title2(color: MoDeepColor.main100),),
                const SizedBox(height: 8),
                Text('lsdldsfjsfsdljdsfjdfsjlfds', style: MoDeepTextStyle.sub1(color: MoDeepColor.white),),
                const SizedBox(height: 21),
                Text('작성일 2222.22.22', style: MoDeepTextStyle.label3(color: MoDeepColor.white),),
              ],
            ),
          ),
        ),
      )
    );
  }
}
