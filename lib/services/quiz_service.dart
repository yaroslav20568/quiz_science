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
      Question(
        id: 'math_3',
        text: 'What is 12 × 8?',
        options: ['96', '94', '98', '92'],
      ),
      Question(
        id: 'math_4',
        text: 'What is the value of π (pi) to two decimal places?',
        options: ['3.14', '3.15', '3.13', '3.16'],
      ),
      Question(
        id: 'math_5',
        text: 'What is 144 ÷ 12?',
        options: ['12', '11', '13', '10'],
      ),
      Question(
        id: 'math_6',
        text: 'What is 5² (5 squared)?',
        options: ['25', '20', '30', '15'],
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
      Question(
        id: 'physics_3',
        text: 'What is the formula for kinetic energy?',
        options: ['E = ½mv²', 'E = mv', 'E = mgh', 'E = Fd'],
      ),
      Question(
        id: 'physics_4',
        text: 'What is the acceleration due to gravity on Earth?',
        options: ['9.8 m/s²', '10 m/s²', '9.6 m/s²', '9.9 m/s²'],
      ),
      Question(
        id: 'physics_5',
        text: 'What is the unit of electric current?',
        options: ['Ampere', 'Volt', 'Ohm', 'Watt'],
      ),
      Question(
        id: 'physics_6',
        text: 'What is the formula for density?',
        options: ['ρ = m/V', 'ρ = V/m', 'ρ = m×V', 'ρ = m+V'],
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
      Question(
        id: 'chemistry_3',
        text: 'What is the most abundant gas in Earth\'s atmosphere?',
        options: ['Nitrogen', 'Oxygen', 'Carbon dioxide', 'Argon'],
      ),
      Question(
        id: 'chemistry_4',
        text: 'What is the chemical symbol for gold?',
        options: ['Au', 'Ag', 'Go', 'Gd'],
      ),
      Question(
        id: 'chemistry_5',
        text: 'What is the pH value of pure water at 25°C?',
        options: ['7', '6', '8', '5'],
      ),
      Question(
        id: 'chemistry_6',
        text: 'What is the atomic number of oxygen?',
        options: ['8', '7', '9', '6'],
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
