import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centraliza na tela
          children: [
            const Text('Seja bem vindo!'),
            const SizedBox(height: 20), // espaço entre texto e botão
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD49100),
              ),
              onPressed: () {
                // ação quando o botão for pressionado
                print('Botão pressionado!');
              },
              child: const Text(
                'Iniciar cadastro',
                style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
