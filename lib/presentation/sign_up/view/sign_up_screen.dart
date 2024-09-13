import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/component/widget/modeep_button.dart';
import 'package:modeep/core/component/widget/modeep_textfield.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/sign_up/widget/sign_up_title_widget.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  late TextEditingController nameController;
  late TextEditingController idController;
  late TextEditingController pwdController;
  late FocusNode nameFocusNode;
  late FocusNode idFocusNode;
  late FocusNode pwFocusNode;


  @override
  void initState() {
    super.initState();
    idController = TextEditingController();
    idFocusNode = FocusNode();
    pwdController = TextEditingController();
    pwFocusNode = FocusNode();
    nameController = TextEditingController();
    nameFocusNode = FocusNode();
  }

  @override
  void dispose() {
    idController.dispose();
    idFocusNode.dispose();
    pwdController.dispose();
    pwFocusNode.dispose();
    nameController.dispose();
    nameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MoDeepColor.background,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SignUpTitleWidget(),
                const SizedBox(height: 40),
                Expanded(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            child: MoDeepTextField(
                              controller: idController,
                              focusNode: idFocusNode,
                              title: "아이디",
                            ),
                          ),
                          SizedBox(width: 12),
                          GestureDetector(
                            onTap: (){},
                            child: Container(
                              width: 78,
                              height: 44,
                              decoration: BoxDecoration(
                                  color: MoDeepColor.main200,
                                  borderRadius: BorderRadius.circular(10)
                              ),
                              child: Center(
                                child: Text('중복확인', style: MoDeepTextStyle.label3(color: MoDeepColor.gray500)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 36),
                      MoDeepTextField(
                          type: MoDeepTextFieldType.password,
                          controller: pwdController,
                          focusNode: pwFocusNode,
                          title: "비밀번호"
                      ),
                      const SizedBox(height: 36),
                      MoDeepTextField(
                          controller: nameController,
                          focusNode: nameFocusNode,
                          title: "이름"
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 36),
                  child: GestureDetector(
                    onTap: () {
                      context.push('/success');
                    },
                    child: MoDeepButton(
                      color: MoDeepColor.gray500,
                      text: "회원가입",
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );
  }
}
