import 'package:flutter/material.dart';

class QuizPage extends StatefulWidget {
  final String username;
  const QuizPage({super.key, required this.username});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int _currentQuestion = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hai, ${widget.username}!")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Pertanyaan $_currentQuestion",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _currentQuestion++;
                });
              },
              child: const Text("Soal berikutnya"),
            ),
          ],
        ),
      ),
    );
  }
}
