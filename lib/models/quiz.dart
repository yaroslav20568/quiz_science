import 'package:quiz_science/models/question.dart';

enum Subject { mathematics, physics, chemistry }

extension SubjectExtension on Subject {
  String get name {
    switch (this) {
      case Subject.mathematics:
        return 'Mathematics';
      case Subject.physics:
        return 'Physics';
      case Subject.chemistry:
        return 'Chemistry';
    }
  }
}

class Quiz {
  final Subject subject;
  final List<Question> questions;

  const Quiz({required this.subject, required this.questions});

  int get totalQuestions => questions.length;
}
