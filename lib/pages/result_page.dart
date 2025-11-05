import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'home_page.dart';

class ResultPage extends StatelessWidget {
  final String username;
  final int score;
  final int total;

  const ResultPage({
    super.key,
    required this.username,
    required this.score,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Hasil Kuis")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Selamat, $username!",
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              "Skor Kamu: $score / $total",
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 40),
            CustomButton(
              text: "Main Lagi",
              color: Colors.indigo,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
