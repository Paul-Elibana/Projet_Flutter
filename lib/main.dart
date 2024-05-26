import 'package:flutter/material.dart';
import 'package:projetmap/carte/conn.dart';
import 'package:projetmap/carte/carte.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projet Carte',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Connection(),
        '/carte': (context) => const Carte(),
      },
    );
  }
}
