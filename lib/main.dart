import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins', // gunakan font custom
      ),
      home: const HomePage(),
    );
  }
}
