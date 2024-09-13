import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';

class MainScreenServiceTitleWidget extends StatefulWidget {
  const MainScreenServiceTitleWidget({super.key});

  @override
  State<MainScreenServiceTitleWidget> createState() => _MainScreenServiceTitleWidgetState();
}

class _MainScreenServiceTitleWidgetState extends State<MainScreenServiceTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('전체 서비스', style: MoDeepTextStyle.label1(color: MoDeepColor.white),)
      ],
    );
  }
}
