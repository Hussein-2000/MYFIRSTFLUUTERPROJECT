import 'package:flutter/material.dart';
import 'home.dart';
import 'chpizza.dart';
import 'vpizza.dart';
import 'fries.dart';
import 'facebook.dart';
import 'twitter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
      routes: {
        '0': (context) => const Vpizza(),
        '1': (context) => const Chpizza(),
        '2': (context) => const Fries(),
        '3': (context) => const Twitter(),
        '4': (context) => const Facebook(),
      },
    );
  }
}
