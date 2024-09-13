import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/question/provider/question_tab_provider.dart';

class QuestionMenuTabBarWidget extends ConsumerStatefulWidget {
  const QuestionMenuTabBarWidget({super.key});

  @override
  ConsumerState<QuestionMenuTabBarWidget> createState() => _QuestionMenuTabBarWidgetState();
}

class _QuestionMenuTabBarWidgetState extends ConsumerState<QuestionMenuTabBarWidget> {

  List<String> items = [
    "문의하기",
    "나의 문의 내역"
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    final questionPageNotifier = ref.read(QuestionTabStateProvider.notifier);

    return SizedBox(
      height: 35,
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index){
                  final isSelected = index == selectedIndex;
                  return GestureDetector(
                    behavior: HitTestBehavior.translucent,
                    onTap: (){
                      setState(() {
                        selectedIndex = index;
                      });
                      questionPageNotifier.changePage(pageIndex: index);
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / items.length,
                          child: Center(
                            child: Text(
                                items[index],
                              style: MoDeepTextStyle.sub1(
                                  color: MoDeepColor.white
                              ),
                            ),
                          ),
                        ),
                        if (isSelected)
                          Container(
                            width: 120,
                            height: 5,
                            color: MoDeepColor.main300,
                          )
                      ],
                    ),
                  );
                }
              ),
          ),
          Container(
            height: 2,
            color: MoDeepColor.white,
          )
        ],
      ),
    );
  }
}
