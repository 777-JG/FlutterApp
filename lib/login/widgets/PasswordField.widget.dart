import 'package:flutter/material.dart';
import 'package:flutter_gymapp/login/LoginView.controller.dart';
import 'package:get/get.dart';

class Passwordfield extends StatefulWidget {
  // Remover const
  const Passwordfield({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PasswordfieldState createState() => _PasswordfieldState();
}

class _PasswordfieldState extends State<Passwordfield> {
  bool _obscureText = true; // Inicialmente a senha está oculta

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText; // Alterna a visibilidade
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: _obscureText, // Usa a variável de estado
      showCursor: false,
      controller:
          Get.find<LoginController>().passwordInput, // Obtendo o controlador
      decoration: InputDecoration(
        hintText: 'Digite sua senha',
        suffixIcon: IconButton(
          icon: Icon(
            _obscureText
                ? Icons.visibility
                : Icons.visibility_off, // Muda o ícone
          ),
          onPressed:
              _togglePasswordVisibility, // Alterna a visibilidade ao clicar
        ),
      ),
    );
  }
}
