import 'package:exercise_1_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bienvenido!',
      theme: ThemeData.dark(),
      home: HomeScreen(),
    );
  }
}
