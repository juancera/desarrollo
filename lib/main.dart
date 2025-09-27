// main.dart

import 'package:flutter/material.dart';
import 'package:myapp/presentation/screens/Home_Screen.dart'; // Importamos la pantalla principal

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarjeta Personal',
      home: const HomeScreen(), // Ahora usa el HomeScreen
    );
  }
}