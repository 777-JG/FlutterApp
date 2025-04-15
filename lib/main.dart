import 'package:flutter/material.dart';
import 'package:flutter_gymapp/SplashView/splashview.dart';
import 'package:flutter_gymapp/login/Login.Bindings.dart';
import 'package:get/get.dart';
import 'package:flutter_gymapp/login/LoginView.controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(LoginController());
    return GetMaterialApp(
        initialBinding: LoginBindings(),
        debugShowCheckedModeBanner: false,
        title: 'Flutter demo',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: const Splashview());
  }
}
