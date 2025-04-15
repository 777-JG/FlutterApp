import 'package:flutter/material.dart';
import 'package:flutter_gymapp/login/login.view.dart';
import 'package:get/get.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 300),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggleDrawer() {
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openEndDrawer();
    } else {
      _scaffoldKey.currentState!.openDrawer();
    }
    _controller.forward(from: 0.0);
  }

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: _scaffoldKey, // Defina a chave do Scaffold
        appBar: AppBar(
          title: const Text('Página Incial'),
          leading: IconButton(
            icon: RotationTransition(
              turns: _controller,
              child: const Icon(Icons.person),
            ),
            onPressed: () {
              _toggleDrawer();
            },
          ),
          backgroundColor: Colors.black87,
          iconTheme: const IconThemeData(color: Colors.white),
          titleTextStyle: const TextStyle(
              color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
        ),
        drawer: Drawer(
          child: Column(
            children: [
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.blue),
                accountName: Text('Gabriel Paiva'),
                accountEmail: Text('admin@admin.com'),
                currentAccountPicture: CircleAvatar(
                  child: Text(
                    'G',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              const ListTile(
                leading: Icon(Icons.person_pin),
                title: Text('Perfil'),
                subtitle: Text('Informações do perfil'),
              ),
              Expanded(child: Container()),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('Logout'),
                subtitle: const Text('Terminar sessão'),
                onTap: () {
                  Get.off(() => const LoginView());
                },
              ),
            ],
          ),
        ),
        body: Image.asset(
          'assets/maxmusclelogo.jpeg',
          fit: BoxFit.cover,
          height: 1000.0,
        ),
      ),
    );
  }
}
