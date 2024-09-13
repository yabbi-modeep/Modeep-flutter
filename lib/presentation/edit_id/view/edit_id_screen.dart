import 'package:flutter/material.dart';
import 'package:modeep/core/modeep.dart';
import 'package:modeep/presentation/edit_id/widget/edit_id_app_bar_widget.dart';


class EditIdScreen extends StatefulWidget {
  const EditIdScreen({super.key});

  @override
  State<EditIdScreen> createState() => _EditIdScreenState();
}

class _EditIdScreenState extends State<EditIdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MoDeepColor.background,
      appBar: const EditIdAppBarWidget(),
    );
  }
}
