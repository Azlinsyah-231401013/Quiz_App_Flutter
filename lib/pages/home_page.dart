import 'package:flutter/material.dart';
import 'quiz_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _name = TextEditingController();
  final _nim  = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Quiz Ulun")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Masukkan Identitas", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            TextField(controller: _name, decoration: const InputDecoration(labelText: "Nama", border: OutlineInputBorder())),
            const SizedBox(height: 12),
            TextField(controller: _nim,  decoration: const InputDecoration(labelText: "NIM",  border: OutlineInputBorder())),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                if (_name.text.isEmpty || _nim.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Nama & NIM wajib diisi")));
                  return;
                }
                Navigator.push(context, MaterialPageRoute(
                  builder: (_) => QuizPage(name: _name.text, nim: _nim.text),
                ));
              },
              child: const Text("Mulai Math Quiz"),
            ),
          ],
        ),
      ),
    );
  }
}
