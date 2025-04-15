import 'package:flutter/material.dart';
import 'package:flutter_gymapp/login/LoginView.controller.dart';
import 'package:get/get.dart';

class LoginButton extends GetView<LoginController> {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.tryToLogin();
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 40.0),
        textStyle: const TextStyle(fontSize: 18),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
      ),
      child: const Text('Entrar'),
    );
  }
}
