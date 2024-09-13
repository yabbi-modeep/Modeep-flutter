import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/component/widget/modeep_button.dart';
import 'package:modeep/core/component/widget/modeep_textfield.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/login/widget/login_title_widget.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  late TextEditingController idController;
  late TextEditingController pwdController;
  late FocusNode idFocusNode;
  late FocusNode pwFocusNode;


  @override
  void initState() {
    super.initState();
    idController = TextEditingController();
    idFocusNode = FocusNode();
    pwdController = TextEditingController();
    pwFocusNode = FocusNode();
  }

  @override
  void dispose() {
    idController.dispose();
    idFocusNode.dispose();
    pwdController.dispose();
    pwFocusNode.dispose();
    super.dispose();
  }

  // void _buttonUpdate() {
  //   idController.text.isNotEmpty && pwdController.text.isNotEmpty
  //       ? ref.read(loginFieldProvider.notifier).state = true
  //       : ref.read(loginFieldProvider.notifier).state = false;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoDeepColor.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 28, right: 28, top: 72),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const LoginTitleWidget(),
              const SizedBox(height: 40),
              Expanded(
                  child: Column(
                    children: [
                      MoDeepTextField(
                          controller: idController,
                          focusNode: idFocusNode,
                          title: '아이디'
                      ),
                      const SizedBox(height: 36),
                      MoDeepTextField(
                          controller: pwdController,
                          focusNode: pwFocusNode,
                          title: '비밀번호',
                        type: MoDeepTextFieldType.password,
                      )
                    ],
                  )
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 36),
                child: GestureDetector(
                  onTap: (){
                    context.push('/Main');
                  },
                  child: MoDeepButton(
                    color: MoDeepColor.gray500,
                    text: "로그인",
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
