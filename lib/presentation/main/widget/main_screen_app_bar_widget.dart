import 'package:flutter/material.dart';

// class MainScreenAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
//   const MainScreenAppBarWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: PreferredSize(
//         preferredSize: preferredSize,
//         child: AppBar(
//           automaticallyImplyLeading: false,
//           backgroundColor: MoDeepColor.background,
//           scrolledUnderElevation: 0,
//           title: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Image.asset(
//                 'assets/images/logo/MoDeep_main.png'
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   @override
//   Size get preferredSize => const Size.fromHeight(12);
// }

class MainScreenAppBarWidget extends StatelessWidget {
  const MainScreenAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(padding: const EdgeInsets.only(top: 68),
          child: Image.asset(
              'assets/images/logo/MoDeep_main.png'
          ),
        )
      ],
    );
  }
}
