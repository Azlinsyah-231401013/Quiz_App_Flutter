class Question {
  final String questionText;
  final List<String> options;
  final String correctAnswer;

  Question({
    required this.questionText,
    required this.options,
    required this.correctAnswer,
  });
}

final List<Question> questions = [
  Question(
    questionText: "Siapa penemu bahasa pemrograman Python?",
    options: ["Guido van Rossum", "Dennis Ritchie", "James Gosling", "Bjarne Stroustrup"],
    correctAnswer: "Guido van Rossum",
  ),
  Question(
    questionText: "Flutter menggunakan bahasa pemrograman apa?",
    options: ["Kotlin", "Swift", "Dart", "JavaScript"],
    correctAnswer: "Dart",
  ),
  Question(
    questionText: "Siapa yang mengembangkan framework Flutter?",
    options: ["Apple", "Google", "Meta", "Microsoft"],
    correctAnswer: "Google",
  ),
  Question(
    questionText: "Apa ekstensi file utama untuk proyek Flutter?",
    options: [".java", ".dart", ".swift", ".kt"],
    correctAnswer: ".dart",
  ),
  Question(
    questionText: "Widget mana yang tidak memiliki state di Flutter?",
    options: ["StatelessWidget", "StatefulWidget", "InheritedWidget", "Container"],
    correctAnswer: "StatelessWidget",
  ),
];
