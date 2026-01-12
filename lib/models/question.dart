class Question {
  final String id;
  final String text;
  final List<String> options;
  final int correctAnswerIndex;

  const Question({
    required this.id,
    required this.text,
    required this.options,
    this.correctAnswerIndex = 0,
  });

  bool isCorrect(int selectedIndex) {
    return selectedIndex == correctAnswerIndex;
  }
}
