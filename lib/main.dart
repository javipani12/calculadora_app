import 'package:calculadora/screens/home_screen.dart';
import 'package:flutter/material.dart';

// Aplicación contador 8/11/2022

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen());
  }
}