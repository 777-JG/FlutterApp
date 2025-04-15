import 'package:flutter/material.dart';

class Screenregister extends StatelessWidget {
  const Screenregister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Conta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(labelText: 'Digite seu e-mail'),
            ),
            const TextField(
              decoration: InputDecoration(labelText: 'Digite sua senha'),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Lógica de criação de conta
              },
              child: const Text('Cadastrar'),
            ),
          ],
        ),
      ),
    );
  }
}
