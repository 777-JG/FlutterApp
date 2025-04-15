import 'package:flutter/material.dart';
import 'package:flutter_gymapp/login/screenregister.dart';
import 'package:get/get.dart';
import 'splashcontroller.dart';
// Import para a tela de cadastro

class Splashview extends StatelessWidget {
  const Splashview({super.key});

  @override
  Widget build(BuildContext context) {
    final Splashcontroller controller = Get.put(Splashcontroller());
    return Scaffold(
      body: Stack(
        children: [
          const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.fitness_center, size: 100, color: Colors.blue),
                SizedBox(height: 20),
                Text(
                  'Bem-vindo ao MaxMuscle',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 0,
            right: 0,
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    controller.navigateToLogin();
                  },
                  child: const Text(
                    'Já tenho uma conta',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                const SizedBox(height: 16), // Espaço entre os botões
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Screenregister(),
                      ),
                    );
                  },
                  child: const Text(
                    'Criar conta',
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
