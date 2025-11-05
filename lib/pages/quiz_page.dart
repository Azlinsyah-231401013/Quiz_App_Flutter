import 'package:flutter/material.dart';
import 'result_page.dart';

class QuizPage extends StatefulWidget {
  final String name; final String nim;
  const QuizPage({super.key, required this.name, required this.nim});

  @override State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int idx = 0, correct = 0, wrong = 0; bool answered = false; String picked = "";

  final List<Map<String, dynamic>> q = [
    {"t": "12 × 3 = ?", "o": ["33","35","36","38","40"], "a":"36"},
    {"t": "25 ÷ 5 = ?", "o": ["4","5","6","7","8"], "a":"5"},
    {"t": "9 + 8 = ?",  "o": ["16","17","18","19","20"], "a":"17"},
  ];

  void select(String v){
    if (answered) return;
    setState(() {
      picked = v; answered = true;
      if (v == q[idx]["a"]) correct++; else wrong++;
    });
    Future.delayed(const Duration(milliseconds: 900), (){
      if (!mounted) return;
      if (idx < q.length - 1) {
        setState(() { idx++; answered=false; picked=""; });
      } else {
        Navigator.pushReplacement(context, MaterialPageRoute(
          builder: (_) => ResultPage(name: widget.name, nim: widget.nim, correct: correct, wrong: wrong),
        ));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final cur = q[idx];
    return Scaffold(
      appBar: AppBar(title: Text("Math Quiz - ${widget.name} (${widget.nim})")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Soal ${idx+1} / ${q.length}", style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 16),
          Text(cur["t"], style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
                    ...List<Widget>.from(cur["o"].map<Widget>((opt){
            Color? bg;
            if (answered) {
              if (opt == cur["a"]) bg = Colors.green;
              else if (opt == picked) bg = Colors.red;
            }
            return Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(vertical: 6),
              child: ElevatedButton(
                onPressed: answered ? null : () => select(opt),
                style: ElevatedButton.styleFrom(
                  backgroundColor: bg, padding: const EdgeInsets.all(14),
                ),
                child: Align(alignment: Alignment.centerLeft, child: Text(opt)),
              ),
            );
          })),
