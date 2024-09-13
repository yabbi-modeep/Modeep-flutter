import 'package:flutter_riverpod/flutter_riverpod.dart';

final QuestionTabStateProvider = StateNotifierProvider<QuestionTabStateNotifier, PageController>((ref) => QuestionTabStateNotifier());

class QuestionTabStateNotifier extends StateNotifier<PageController> {
  QuestionTabStateNotifier() : super(PageController(pageIndex: 0));

  void changePage({required int pageIndex}) {
    state = PageController(pageIndex: pageIndex);
  }
}

class PageController {
  final int pageIndex;
  PageController({required this.pageIndex});
}
