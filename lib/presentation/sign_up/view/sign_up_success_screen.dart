import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/core/modeep_color.dart';

class SignUpSuccessScreen extends StatefulWidget {
  const SignUpSuccessScreen({super.key});

  @override
  State<SignUpSuccessScreen> createState() => _SignUpSuccessScreenState();
}

class _SignUpSuccessScreenState extends State<SignUpSuccessScreen> {
  @override

  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 1500)).then(
          (value) => context.go("/Main"),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoDeepColor.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icon/sign_up/success_icon.png'),
            const SizedBox(height: 32),
            Text('이제 모딥의 서비스를', style: MoDeepTextStyle.title4(color: MoDeepColor.white),),
            Text('사용해보세요!', style: MoDeepTextStyle.title4(color: MoDeepColor.white),)
          ],
        )
      ),
    );
  }
}
