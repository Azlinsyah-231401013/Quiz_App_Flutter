import 'package:flutter/material.dart';
import 'home_page.dart';

class ResultPage extends StatelessWidget {
  final String name; final String nim; final int correct; final int wrong;
  const ResultPage({super.key, required this.name, required this.nim, required this.correct, required this.wrong});

  @override
  Widget build(BuildContext context) {
    final total = correct + wrong;
    return Scaffold(
      appBar: AppBar(title: const Text("Hasil Quiz")),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Nama: $name", style: const TextStyle(fontSize: 18)),
            Text("NIM : $nim",  style: const TextStyle(fontSize: 18)),
            const SizedBox(height: 16),
            Text("Total Soal: $total", style: const TextStyle(fontSize: 18)),
            Text("Benar: $correct", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.green)),
            Text("Salah: $wrong",  style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.red)),
            const SizedBox(height: 28),
            ElevatedButton(
              onPressed: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=> const HomePage())),
              child: const Text("Kembali ke Home"),
            )
          ]),
        ),
      ),
    );
  }
}
