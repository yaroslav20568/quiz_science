import 'package:flutter/material.dart';
import 'package:quiz_science/constants/index.dart';
import 'package:quiz_science/models/index.dart';
import 'package:quiz_science/widgets/index.dart';

class ResultScreen extends StatelessWidget {
  final Quiz quiz;
  final int correctAnswers;
  final List<int> userAnswers;

  const ResultScreen({
    super.key,
    required this.quiz,
    required this.correctAnswers,
    required this.userAnswers,
  });

  double get percentage {
    return (correctAnswers / quiz.totalQuestions) * 100;
  }

  Color get resultColor {
    if (percentage >= 70) return AppColors.success;
    if (percentage >= 50) return AppColors.selectedOption;
    return AppColors.error;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ResultSummaryCard(
                  quiz: quiz,
                  correctAnswers: correctAnswers,
                  percentage: percentage,
                  resultColor: resultColor,
                ),
                const SizedBox(height: 32),
                ...quiz.questions.asMap().entries.map((entry) {
                  final index = entry.key;
                  final question = entry.value;
                  final userAnswer = userAnswers[index];
                  final isCorrect = userAnswer == question.correctAnswerIndex;

                  return QuestionResultCard(
                    question: question,
                    questionIndex: index,
                    userAnswer: userAnswer,
                    isCorrect: isCorrect,
                  );
                }),
                const SizedBox(height: 16),
                AppButton(
                  text: 'Back to Subjects',
                  type: AppButtonType.elevated,
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
