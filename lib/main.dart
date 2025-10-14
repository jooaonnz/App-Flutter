import 'package:flutter/material.dart';
import './features/home/screens/homePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Página home',
      theme: ThemeData(primarySwatch: Colors.indigo),
      initialRoute: '/PageHome', // 👈 Define a tela inicial
      routes: {'/PageHome': (context) => const HomePage()},
    );
  }
}
