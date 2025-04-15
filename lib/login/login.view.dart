import 'package:flutter/material.dart';
import 'package:flutter_gymapp/login/LoginView.controller.dart';
import 'package:flutter_gymapp/login/widgets/EmailField.widget.dart';
import 'package:flutter_gymapp/login/widgets/LoginButton.widget.dart';
import 'package:flutter_gymapp/login/widgets/PasswordField.widget.dart';
import 'package:get/get.dart';
import 'package:flutter_gymapp/SplashView/splashcontroller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final Splashcontroller splashcontroller = Get.find();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blue,
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 25.0),
        centerTitle: true,
        title: const Text('Login'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            splashcontroller.navigateToSplash();
          },
        ),
      ),
      body: Stack(
        children: [
          _body(context),
        ],
      ),
    );
  }

  Widget _body(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildFieldContainer(const Emailfield()),
            const SizedBox(height: 16),
            _buildFieldContainer(const Passwordfield()),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            const SizedBox(
              width: double.infinity,
              child: LoginButton(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildFieldContainer(Widget child) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white.withOpacity(0.8),
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.black26,
          blurRadius: 10,
          offset: Offset(0, 2),
        ),
      ],
    ),
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    child: child,
  );
}
