import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/my_page/widget/my_page_app_bar_widget.dart';
import 'package:modeep/presentation/my_page/widget/my_page_info_widget.dart';
import 'package:modeep/presentation/my_page/widget/my_page_profile_widget.dart';

class MyPageScreen extends StatelessWidget {
  const MyPageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
            gradient: MoDeepColor.gradient1,
          ),
          child: const Column(
            children: [
              MyPageAppBarWidget(),
              MyPageProfileWidget(),
              const SizedBox(height: 25),
              MyPageInfoWidget()
            ],
          ),
        ),
    );
  }
}
