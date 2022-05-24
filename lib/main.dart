import 'package:flutter/material.dart';
import 'package:lesson_1_connexion/sign_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Navigation Basics',
      debugShowCheckedModeBanner: false,
      home: SignIn(),
    );
  }
}
