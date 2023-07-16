import 'package:flutter/material.dart';
import 'package:ideate_food_delivery/mainScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ThemeData().colorScheme.copyWith(
              primary: const Color(0xFFFF6838),
              brightness: Brightness.light,
            ),
      ),
      home: const Screen1(),
    );
  }
}
