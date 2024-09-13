import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/question/widget/question_add_widget.dart';
import 'package:modeep/presentation/question/widget/question_app_bar_widget.dart';
import 'package:modeep/presentation/question/widget/question_menu_tab_bar_widget.dart';
import 'package:modeep/presentation/question/widget/question_user_widget.dart';
import 'package:modeep/presentation/question/provider/question_tab_provider.dart';

class QuestionScreen extends ConsumerStatefulWidget {
  const QuestionScreen({super.key});

  @override
  ConsumerState<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends ConsumerState<QuestionScreen> {

  final List<Widget> item = [
    const QuestionAddWidget(),
    const QuestionUserWidget()
  ];
  
  @override
  Widget build(BuildContext context) {
    final questionPageState = ref.watch(QuestionTabStateProvider);
    return Scaffold(
      backgroundColor: MoDeepColor.background,
      appBar: const QuestionAppBarWidget(),
      body: SafeArea(
        child: Column(
          children: [
            const QuestionMenuTabBarWidget(),
            Expanded(
              child: PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                pageSnapping: false,
                itemCount: item.length,
                itemBuilder: (context, index){
                  return item[questionPageState.pageIndex];
                  },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
