import 'package:flutter_gymapp/SplashView/splashview.dart';
import 'package:get/get.dart';
import 'package:flutter_gymapp/login/login.view.dart';

class Splashcontroller extends GetxController {
  void navigateToLogin() {
    Get.off(const LoginView());
  }

  void navigateToSplash() {
    Get.off(const Splashview());
  }
}
