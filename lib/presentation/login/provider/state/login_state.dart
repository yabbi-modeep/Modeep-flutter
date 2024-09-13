import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum LoginState{
  initial,
  loading,
  success,
  failure
}


final loginFieldProvider = StateProvider<bool>((ref) => false);

final loginIdControllerProvider = StateProvider.autoDispose<TextEditingController>((ref) => TextEditingController());
final loginPwdControllerProvider = StateProvider.autoDispose<TextEditingController>((ref) => TextEditingController());