import 'package:flutter/material.dart';
import '../data/questions.dart';
import '../widgets/quiz_card.dart';
import 'result_page.dart';

class QuizPage extends StatefulWidget {
  final String username;
  const QuizPage({super.key, required this.username});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int currentIndex = 0;
  int score = 0;

  void checkAnswer(String selectedAnswer) {
    final currentQuestion = questions[currentIndex];
    if (selectedAnswer == currentQuestion.correctAnswer) {
      score++;
    }

    if (currentIndex < questions.length - 1) {
      setState(() {
        currentIndex++;
      });
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => ResultPage(
            username: widget.username,
            score: score,
            total: questions.length,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentIndex];

    return Scaffold(
      appBar: AppBar(
        title: Text("Hai, ${widget.username}!"),
        centerTitle: true,
      ),
      body: QuizCard(
        question: question.questionText,
        options: question.options,
        onSelected: checkAnswer,
      ),
    );
  }
}
