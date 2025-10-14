import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Página Home')),
      body: const Center(child: Text('Bem-vindo à página inicial!')),
    );
  }
}
