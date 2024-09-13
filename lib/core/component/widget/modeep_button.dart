import 'package:flutter/material.dart';
import 'package:modeep/core/component/fonts/modeep_text_style.dart';
import 'package:modeep/core/modeep.dart';

class MoDeepButton extends StatelessWidget {

  final Color color;
  final String text;
  final Color? backgroundColor;

  const MoDeepButton({
    super.key,
    required this.color,
    required this.text,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 56,
      decoration: BoxDecoration(
        color: MoDeepColor.main200,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: Text(
          text,
          style: MoDeepTextStyle.button1(color: color),
        ),
      ),
    );
  }
}

