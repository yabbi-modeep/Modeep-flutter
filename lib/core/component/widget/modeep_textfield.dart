import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:modeep/core/component/fonts/modeep_text_style.dart';
import 'package:modeep/core/modeep.dart';

enum MoDeepTextFieldType {
  none,
  password,
}

class MoDeepTextField extends StatefulWidget {

  final MoDeepTextFieldType type;
  final TextInputType textInputType;
  final TextEditingController controller;
  final FocusNode focusNode;
  final String title;

  final String? widgetTitle;
  final Widget? suffix;


  const MoDeepTextField({
    this.type = MoDeepTextFieldType.none,
    this.textInputType = TextInputType.text,
    this.widgetTitle,
    this.suffix,
    required this.controller,
    required this.focusNode,
    required this.title,
    super.key
  });

  @override
  State<MoDeepTextField> createState() => _MoDeepTextFieldState();
}

class _MoDeepTextFieldState extends State<MoDeepTextField> {

  bool _isClicked = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: MoDeepTextStyle.label1(color: MoDeepColor.white),
        ),
        const SizedBox(height: 10),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 44,
          decoration: BoxDecoration(
            color: MoDeepColor.gray600,
            borderRadius: BorderRadius.circular(10),
            border: widget.focusNode.hasFocus
                ? Border.all(
              color: MoDeepColor.main200,
              width: 2,
            ) : null,
          ),
          child: TextFormField(
            controller: widget.controller,
            focusNode: widget.focusNode,
            cursorColor: MoDeepColor.main200,
            obscureText: !_isClicked && widget.type == MoDeepTextFieldType.password,
            obscuringCharacter: "⦁",
            decoration: InputDecoration(
              hintText: widget.widgetTitle ?? widget.title,
              hintStyle: MoDeepTextStyle.cap1(color: MoDeepColor.gray500),
              border : const OutlineInputBorder(
                borderSide: BorderSide.none
              ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 12),
              suffix: widget.suffix,
              suffixIcon: widget.type == MoDeepTextFieldType.password
                ? GestureDetector(
                onTap: () {
                  setState(
                        () {
                      _isClicked ? _isClicked = false : _isClicked = true;
                    },
                  );
                },
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    _isClicked
                        ? "assets/images/icon/core/eyes_open_icon.svg"
                        : "assets/images/icon/core/eyes_close_icon.svg"
                  ),
                ),
              )
                  : null
            ),
            onTap: () {
              FocusScope.of(context).hasFocus
                  ? FocusScope.of(context).unfocus()
                  : FocusScope.of(context).hasFocus;
            },
            onTapOutside: (event) {
              FocusScope.of(context).unfocus();
            },
          ),
        )
      ],
    );
  }
}
