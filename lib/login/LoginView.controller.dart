import 'package:flutter/material.dart';
import 'package:flutter_gymapp/home/home.view.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  TextEditingController emailInput = TextEditingController();
  TextEditingController passwordInput = TextEditingController();
  final String email = 'admin@admin.com';
  final String password = 'admin';

  void tryToLogin() {
    if (emailInput.text.isEmpty) {
      showError('Insira seu e-mail');
      return;
    }

    if (emailInput.text == email) {
      checkPassword();
    } else {
      showError('E-mail incorreto');
    }
  }

  void checkPassword() {
    if (passwordInput.text.isEmpty) {
      showError('Insira sua senha');
      return;
    }

    if (passwordInput.text == password) {
      login();
    } else {
      showError('Senha incorreta');
    }
  }

  void login() {
    Get.offAll(const HomeView());
    emailInput.clear();
    passwordInput.clear();
  }

  void showError(String error) {
    Get.snackbar(
      'Erro',
      error,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor: Colors.red,
      colorText: Colors.white,
    );
  }
}
