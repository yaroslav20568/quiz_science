import 'dart:math';
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
      Question(
        id: 'math_7',
        text: 'What is 9 × 7?',
        options: ['63', '64', '62', '65'],
      ),
      Question(
        id: 'math_8',
        text: 'What is the square root of 144?',
        options: ['12', '11', '13', '10'],
      ),
      Question(
        id: 'math_9',
        text: 'What is 3³ (3 cubed)?',
        options: ['27', '24', '30', '21'],
      ),
      Question(
        id: 'math_10',
        text: 'What is 100 ÷ 4?',
        options: ['25', '24', '26', '23'],
      ),
      Question(
        id: 'math_11',
        text: 'What is 18 + 25?',
        options: ['43', '42', '44', '41'],
      ),
      Question(
        id: 'math_12',
        text: 'What is 7 × 9?',
        options: ['63', '64', '62', '65'],
      ),
      Question(
        id: 'math_13',
        text: 'What is the square root of 81?',
        options: ['9', '8', '10', '7'],
      ),
      Question(
        id: 'math_14',
        text: 'What is 4⁴ (4 to the power of 4)?',
        options: ['256', '255', '257', '254'],
      ),
      Question(
        id: 'math_15',
        text: 'What is 200 ÷ 8?',
        options: ['25', '24', '26', '23'],
      ),
      Question(
        id: 'math_16',
        text: 'What is 11 × 11?',
        options: ['121', '120', '122', '119'],
      ),
      Question(
        id: 'math_17',
        text: 'What is 6³ (6 cubed)?',
        options: ['216', '215', '217', '214'],
      ),
      Question(
        id: 'math_18',
        text: 'What is 50 + 75?',
        options: ['125', '124', '126', '123'],
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
      Question(
        id: 'physics_7',
        text: 'What is the unit of energy?',
        options: ['Joule', 'Newton', 'Watt', 'Pascal'],
      ),
      Question(
        id: 'physics_8',
        text: 'What is the formula for potential energy?',
        options: ['E = mgh', 'E = ½mv²', 'E = Fd', 'E = mc²'],
      ),
      Question(
        id: 'physics_9',
        text: 'What is the unit of power?',
        options: ['Watt', 'Joule', 'Newton', 'Volt'],
      ),
      Question(
        id: 'physics_10',
        text: 'What is the formula for momentum?',
        options: ['p = mv', 'p = ma', 'p = Fd', 'p = mgh'],
      ),
      Question(
        id: 'physics_11',
        text: 'What is the unit of electric voltage?',
        options: ['Volt', 'Ampere', 'Ohm', 'Watt'],
      ),
      Question(
        id: 'physics_12',
        text: 'What is the formula for acceleration?',
        options: ['a = Δv/Δt', 'a = v/t', 'a = d/t', 'a = F/m'],
      ),
      Question(
        id: 'physics_13',
        text: 'What is the unit of resistance?',
        options: ['Ohm', 'Volt', 'Ampere', 'Watt'],
      ),
      Question(
        id: 'physics_14',
        text: 'What is the formula for work?',
        options: ['W = Fd', 'W = mv', 'W = mgh', 'W = ½mv²'],
      ),
      Question(
        id: 'physics_15',
        text: 'What is the speed of sound in air at room temperature?',
        options: ['343 m/s', '330 m/s', '350 m/s', '320 m/s'],
      ),
      Question(
        id: 'physics_16',
        text: 'What is the unit of frequency?',
        options: ['Hertz', 'Watt', 'Joule', 'Newton'],
      ),
      Question(
        id: 'physics_17',
        text: 'What is the formula for force?',
        options: ['F = ma', 'F = mv', 'F = md', 'F = mg'],
      ),
      Question(
        id: 'physics_18',
        text: 'What is the unit of pressure?',
        options: ['Pascal', 'Newton', 'Joule', 'Watt'],
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
      Question(
        id: 'chemistry_7',
        text: 'What is the chemical symbol for silver?',
        options: ['Ag', 'Au', 'Si', 'Al'],
      ),
      Question(
        id: 'chemistry_8',
        text: 'What is the atomic number of hydrogen?',
        options: ['1', '2', '0', '3'],
      ),
      Question(
        id: 'chemistry_9',
        text: 'What is the chemical symbol for sodium?',
        options: ['Na', 'So', 'Nd', 'Ni'],
      ),
      Question(
        id: 'chemistry_10',
        text: 'What is the atomic number of helium?',
        options: ['2', '1', '3', '4'],
      ),
      Question(
        id: 'chemistry_11',
        text: 'What is the chemical symbol for iron?',
        options: ['Fe', 'Ir', 'In', 'I'],
      ),
      Question(
        id: 'chemistry_12',
        text: 'What is the atomic number of nitrogen?',
        options: ['7', '6', '8', '5'],
      ),
      Question(
        id: 'chemistry_13',
        text: 'What is the chemical symbol for copper?',
        options: ['Cu', 'Co', 'Cr', 'Ca'],
      ),
      Question(
        id: 'chemistry_14',
        text: 'What is the atomic number of sodium?',
        options: ['11', '10', '12', '9'],
      ),
      Question(
        id: 'chemistry_15',
        text: 'What is the chemical symbol for table salt?',
        options: ['NaCl', 'Na2O', 'NaOH', 'Na2CO3'],
      ),
      Question(
        id: 'chemistry_16',
        text: 'What is the atomic number of chlorine?',
        options: ['17', '16', '18', '15'],
      ),
      Question(
        id: 'chemistry_17',
        text: 'What is the chemical symbol for potassium?',
        options: ['K', 'P', 'Po', 'Pt'],
      ),
      Question(
        id: 'chemistry_18',
        text: 'What is the atomic number of calcium?',
        options: ['20', '19', '21', '18'],
      ),
    ];
  }

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
        allQuestions = getMathematicsQuestions();
        break;
      case Subject.physics:
        allQuestions = getPhysicsQuestions();
        break;
      case Subject.chemistry:
        allQuestions = getChemistryQuestions();
        break;
    }

    final selectedQuestions = _getRandomQuestions(allQuestions, 6);

    return Quiz(subject: subject, questions: selectedQuestions);
  }
}
