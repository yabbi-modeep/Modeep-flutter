import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/modeep.dart';


class MainScreenServiceWidget extends StatefulWidget {
  const MainScreenServiceWidget({super.key});

  @override
  State<MainScreenServiceWidget> createState() => _MainScreenServiceWidgetState();
}

class _MainScreenServiceWidgetState extends State<MainScreenServiceWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: MoDeepColor.main100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/images/icon/main/ai_length_icon.png'),
            ),
            const SizedBox(width: 19),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('길이 분석', style: MoDeepTextStyle.title3(color: MoDeepColor.main500),),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Icon(
                          Icons.arrow_forward_ios,
                          color: MoDeepColor.main100,
                          size: 12
                      ),
                      onTap: (){
                        context.push('/length');
                      },
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text('사진 한 장으로', style: MoDeepTextStyle.sub3(color: MoDeepColor.white),),
                Text('간단하게 길이 분석!', style: MoDeepTextStyle.sub3(color: MoDeepColor.white),),
              ],
            )
          ],
        ),
        const SizedBox(height: 38),
        Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: MoDeepColor.main100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/images/icon/main/ai_chat_icon.png'),
            ),
            const SizedBox(width: 19),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('심리 상담', style: MoDeepTextStyle.title3(color: MoDeepColor.main500),),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Icon(
                          Icons.arrow_forward_ios,
                          color: MoDeepColor.main100,
                          size: 12
                      ),
                      onTap: (){
                        context.push('/chat');
                      },
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text('상담을 통해', style: MoDeepTextStyle.sub3(color: MoDeepColor.white),),
                Text('고민을 치유해 보세요!', style: MoDeepTextStyle.sub3(color: MoDeepColor.white),),
              ],
            )
          ],
        ),
        const SizedBox(height: 38),
        Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                color: MoDeepColor.main100,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset('assets/images/icon/main/ai_code_icon.png'),
            ),
            const SizedBox(width: 19),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('코드 분석', style: MoDeepTextStyle.title3(color: MoDeepColor.main500),),
                    const SizedBox(width: 5),
                    GestureDetector(
                      child: Icon(
                          Icons.arrow_forward_ios,
                          color: MoDeepColor.main100,
                          size: 12
                      ),
                      onTap: (){},
                    )
                  ],
                ),
                const SizedBox(height: 8),
                Text('코드를 쉽게', style: MoDeepTextStyle.sub3(color: MoDeepColor.white),),
                Text('분석해 보세요!', style: MoDeepTextStyle.sub3(color: MoDeepColor.white),),
              ],
            )
          ],
        )
      ],
    );
  }
}
