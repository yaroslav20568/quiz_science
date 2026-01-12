import 'package:quiz_science/models/index.dart';

class QuizService {
  static List<Question> getMathematicsQuestions() {
    return const [
      Question(
        id: 'math_1',
        text: 'What is 15 + 27?',
        options: ['42', '41', '43', '40'],
      ),
      Question(
        id: 'math_2',
        text: 'What is the square root of 64?',
        options: ['8', '7', '9', '6'],
      ),
    ];
  }

  static List<Question> getPhysicsQuestions() {
    return const [
      Question(
        id: 'physics_1',
        text: 'What is the unit of force in the International System of Units?',
        options: ['Newton', 'Joule', 'Watt', 'Pascal'],
      ),
      Question(
        id: 'physics_2',
        text: 'What is the speed of light in vacuum?',
        options: [
          '299,792,458 m/s',
          '300,000,000 m/s',
          '299,000,000 m/s',
          '301,000,000 m/s',
        ],
      ),
    ];
  }

  static List<Question> getChemistryQuestions() {
    return const [
      Question(
        id: 'chemistry_1',
        text: 'What is the chemical symbol for water?',
        options: ['H2O', 'CO2', 'O2', 'NaCl'],
      ),
      Question(
        id: 'chemistry_2',
        text: 'What is the atomic number of carbon?',
        options: ['6', '5', '7', '8'],
      ),
    ];
  }

  static Quiz getQuizBySubject(Subject subject) {
    switch (subject) {
      case Subject.mathematics:
        return Quiz(
          subject: Subject.mathematics,
          questions: getMathematicsQuestions(),
        );
      case Subject.physics:
        return Quiz(subject: Subject.physics, questions: getPhysicsQuestions());
      case Subject.chemistry:
        return Quiz(
          subject: Subject.chemistry,
          questions: getChemistryQuestions(),
        );
    }
  }
}
