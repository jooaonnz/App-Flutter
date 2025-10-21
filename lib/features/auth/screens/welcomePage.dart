import 'package:flutter/material.dart';
import 'package:tela_de_cadastro/features/auth/screens/login.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // centraliza na tela
          children: [
            const Text('Seja bem vindo!',  style: TextStyle(fontFamily: 'Poppins', fontSize: 26.0 , fontWeight: FontWeight.w500), ),
            const SizedBox(height: 90), // espaço entre texto e botão
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFFD49100),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
              ),
              onPressed: () {
                print('Botão pressionado!');
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (context) => const Login(),
                  )
                );  
              },
              child: Padding(
                padding: EdgeInsets.all(10),
                child: const Text(
                'Iniciar cadastro',
                style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF), fontFamily: 'Poppins', fontWeight: FontWeight.w500 ),
              ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
