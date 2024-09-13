import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/core/router.dart';

class MyPageInfoWidget extends StatefulWidget {
  const MyPageInfoWidget({super.key});

  @override
  State<MyPageInfoWidget> createState() => _MyPageInfoWidgetState();
}

class _MyPageInfoWidgetState extends State<MyPageInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(height: 24),
        Container(
          height: 605,
          width: double.infinity,
          decoration: BoxDecoration(
            color: MoDeepColor.background,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
            ),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 27, top: 27, bottom: 27),
                child: Column(
                  children: [
                    Text(
                      '정보조회',
                      style: MoDeepTextStyle.label1(
                        color: MoDeepColor.gray100,
                      ),
                    ),
                  ],
                )
              ),
              Padding(padding: const EdgeInsets.only(left: 36),
                child: Column(
                  children: [
                    GestureDetector(
                      onTap: (){
                        context.push('/edit_id');
                      },
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/icon/my_page/my_page_id_icon.svg'),
                          const SizedBox(width: 25),
                          Text('아이디 변경', style: MoDeepTextStyle.button1(color: MoDeepColor.white),),
                          const SizedBox(width: 16),
                          Text('joeGueseok', style: MoDeepTextStyle.label1(color: MoDeepColor.gray100),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),
                    GestureDetector(
                      onTap: (){},
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/icon/my_page/my_page_post_icon.svg'),
                          const SizedBox(width: 25),
                          Text('내 게시물 조회', style: MoDeepTextStyle.button1(color: MoDeepColor.white),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 35),
                    GestureDetector(
                      onTap: (){},
                      child: Row(
                        children: [
                          SvgPicture.asset('assets/images/icon/my_page/my_page_pwd_icon.svg'),
                          const SizedBox(width: 25),
                          Text('비밀번호', style: MoDeepTextStyle.button1(color: MoDeepColor.white),)
                        ],
                      ),
                    ),
                    const SizedBox(height: 310,),
                    GestureDetector(
                      onTap: (){},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(padding: const EdgeInsets.only(right: 40),
                            child: Text('로그아웃', style: MoDeepTextStyle.title3(color: MoDeepColor.Red),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
