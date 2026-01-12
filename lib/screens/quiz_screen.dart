import 'package:flutter/material.dart';
import 'package:quiz_science/constants/index.dart';
import 'package:quiz_science/models/index.dart';
import 'package:quiz_science/services/index.dart';
import 'package:quiz_science/screens/index.dart';
import 'package:quiz_science/widgets/index.dart';

class QuizScreen extends StatefulWidget {
  final Subject subject;

  const QuizScreen({super.key, required this.subject});

  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  late Quiz quiz;
  int currentQuestionIndex = 0;
  int? selectedAnswerIndex;
  List<int> userAnswers = [];

  @override
  void initState() {
    super.initState();
    quiz = QuizService.getQuizBySubject(widget.subject);
    userAnswers = List.filled(quiz.totalQuestions, -1);
  }

  void _selectAnswer(int index) {
    setState(() {
      selectedAnswerIndex = index;
      userAnswers[currentQuestionIndex] = index;
    });
  }

  void _nextQuestion() {
    if (selectedAnswerIndex == null) return;

    if (currentQuestionIndex < quiz.totalQuestions - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedAnswerIndex = userAnswers[currentQuestionIndex] == -1
            ? null
            : userAnswers[currentQuestionIndex];
      });
    } else {
      _finishQuiz();
    }
  }

  void _previousQuestion() {
    if (currentQuestionIndex > 0) {
      setState(() {
        currentQuestionIndex--;
        selectedAnswerIndex = userAnswers[currentQuestionIndex] == -1
            ? null
            : userAnswers[currentQuestionIndex];
      });
    }
  }

  void _finishQuiz() {
    int correctAnswers = 0;
    for (int i = 0; i < quiz.totalQuestions; i++) {
      if (userAnswers[i] == quiz.questions[i].correctAnswerIndex) {
        correctAnswers++;
      }
    }

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => ResultScreen(
          quiz: quiz,
          correctAnswers: correctAnswers,
          userAnswers: userAnswers,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final question = quiz.questions[currentQuestionIndex];
    final progress = (currentQuestionIndex + 1) / quiz.totalQuestions;

    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Column(
          children: [
            QuizProgressHeader(
              currentQuestion: currentQuestionIndex + 1,
              totalQuestions: quiz.totalQuestions,
              progress: progress,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      question.text,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Expanded(
                      child: ListView.builder(
                        itemCount: question.options.length,
                        itemBuilder: (context, index) {
                          return AnswerOption(
                            text: question.options[index],
                            isSelected: selectedAnswerIndex == index,
                            onTap: () => _selectAnswer(index),
                          );
                        },
                      ),
                    ),
                    const SizedBox(height: 16),
                    QuizNavigationButtons(
                      showPrevious: currentQuestionIndex > 0,
                      isNextEnabled: selectedAnswerIndex != null,
                      nextButtonText:
                          currentQuestionIndex < quiz.totalQuestions - 1
                          ? 'Next'
                          : 'Finish',
                      onPrevious: currentQuestionIndex > 0
                          ? _previousQuestion
                          : null,
                      onNext: selectedAnswerIndex != null
                          ? _nextQuestion
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
