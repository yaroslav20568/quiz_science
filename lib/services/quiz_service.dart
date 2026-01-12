import 'dart:math';
import 'package:quiz_science/constants/index.dart';
import 'package:quiz_science/models/index.dart';

class QuizService {
  static List<Question> _getRandomQuestions(
    List<Question> allQuestions,
    int count,
  ) {
    final shuffled = List<Question>.from(allQuestions)..shuffle(Random());
    return shuffled.take(count).toList();
  }

  static Quiz getQuizBySubject(Subject subject) {
    List<Question> allQuestions;
    switch (subject) {
      case Subject.mathematics:
        allQuestions = QuizData.mathematicsQuestions;
        break;
      case Subject.physics:
        allQuestions = QuizData.physicsQuestions;
        break;
      case Subject.chemistry:
        allQuestions = QuizData.chemistryQuestions;
        break;
    }

    final selectedQuestions = _getRandomQuestions(allQuestions, 6);

    return Quiz(subject: subject, questions: selectedQuestions);
  }
}
