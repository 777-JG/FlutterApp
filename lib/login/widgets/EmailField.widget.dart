import 'package:flutter/material.dart';
import 'package:flutter_gymapp/login/LoginView.controller.dart';
import 'package:get/get.dart';

class Emailfield extends GetView<LoginController> {
  const Emailfield({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller.emailInput,
      decoration: const InputDecoration(hintText: 'Digite seu e-mail'),
    );
  }
}
