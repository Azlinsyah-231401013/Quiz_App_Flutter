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
        scaffoldBackgroundColor: const Color(0xFFEAF2FF), // biru lembut
        primaryColor: const Color(0xFF3B5BDB),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(color: Color(0xFF1C1C1C)),
        ),
        fontFamily: 'Poppins',
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF3B5BDB),
          primary: const Color(0xFF3B5BDB),
          secondary: const Color(0xFF4F4F4F),
          brightness: Brightness.light,
        ),
      ),
      home: const HomePage(),
    );
  }
}
