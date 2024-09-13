import 'package:go_router/go_router.dart';
import 'package:modeep/core/view/splash_screen.dart';
import 'package:modeep/presentation/chating/view/consulting_chat_screen.dart';
import 'package:modeep/presentation/code/view/code_screen.dart';
import 'package:modeep/presentation/edit_id/view/edit_id_screen.dart';
import 'package:modeep/presentation/length/view/length_screen.dart';
import 'package:modeep/presentation/login/view/login_screen.dart';
import 'package:modeep/presentation/main/view/main_screen.dart';
import 'package:modeep/presentation/my_page/view/my_page_screen.dart';
import 'package:modeep/presentation/on_boarding/view/on_boarding_screen.dart';
import 'package:modeep/presentation/post/view/post_screen.dart';
import 'package:modeep/presentation/post_details/view/post_details_screen.dart';
import 'package:modeep/presentation/question/view/question_screen.dart';
import 'package:modeep/presentation/sign_up/view/sign_up_screen.dart';
import 'package:modeep/presentation/sign_up/view/sign_up_success_screen.dart';

final router = GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
          path: '/',
          builder: (context, state) => const SplashScreen()
      ),
      GoRoute(
          path: '/onboarding',
          builder: (context, state) => const OnBoardingScreen()
      ),
      GoRoute(
          path: '/login',
          builder: (context, state) => const LoginScreen()
      ),
      GoRoute(
          path: '/edit_id',
          builder: (context, state) => const EditIdScreen()
      ),
      GoRoute(
          path: '/signup',
          builder: (context, state) => const SignUpScreen()
      ),
      GoRoute(
          path: '/success',
          builder: (context, state) => const SignUpSuccessScreen()
      ),
      GoRoute(
          path: '/MyPage',
          builder: (context, state) => const MyPageScreen()
      ),
      GoRoute(
          path: '/Main',
          builder: (context, state) => const MainScreen()
      ),
      GoRoute(
          path: '/question',
          builder: (context, state) => const QuestionScreen()
      ),
      GoRoute(
          path: '/post',
          builder: (context, state) => const PostScreen()
      ),
      GoRoute(
          path: '/postDetails',
          builder: (context, state) => const PostDetailsScreen()
      ),
      GoRoute(
          path: '/length',
          builder: (context, state) => const LengthScreen()
      ),
      GoRoute(
          path: '/chat',
          builder: (context, state) => const ConsultingChatScreen()
      ),
      GoRoute(
          path: '/code',
          builder: (context, state) => const CodeScreen()
      ),
    ]
);