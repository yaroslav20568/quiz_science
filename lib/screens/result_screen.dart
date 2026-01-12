import 'package:flutter/material.dart';
import 'package:quiz_science/constants/index.dart';
import 'package:quiz_science/models/index.dart';

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
                Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: AppColors.surface,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: resultColor.withValues(alpha: 0.3),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        '${quiz.subject.name} Quiz',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: AppColors.textPrimary,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        '$correctAnswers/${quiz.totalQuestions}',
                        style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: resultColor,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        '${percentage.toStringAsFixed(0)}%',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          color: resultColor,
                        ),
                      ),
                      const SizedBox(height: 24),
                      Text(
                        correctAnswers == quiz.totalQuestions
                            ? 'Perfect! All answers are correct!'
                            : correctAnswers >= quiz.totalQuestions / 2
                            ? 'Good job! Keep practicing!'
                            : 'Keep studying! You can do better!',
                        style: const TextStyle(
                          fontSize: 18,
                          color: AppColors.textSecondary,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 32),
                ...quiz.questions.asMap().entries.map((entry) {
                  final index = entry.key;
                  final question = entry.value;
                  final userAnswer = userAnswers[index];
                  final isCorrect = userAnswer == question.correctAnswerIndex;

                  return Card(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                isCorrect ? Icons.check_circle : Icons.cancel,
                                color: isCorrect
                                    ? AppColors.correctAnswer
                                    : AppColors.wrongAnswer,
                              ),
                              const SizedBox(width: 8),
                              Expanded(
                                child: Text(
                                  'Question ${index + 1}',
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.textPrimary,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8),
                          Text(
                            question.text,
                            style: const TextStyle(
                              fontSize: 16,
                              color: AppColors.textPrimary,
                            ),
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Your answer: ${question.options[userAnswer]}',
                            style: TextStyle(
                              fontSize: 14,
                              color: isCorrect
                                  ? AppColors.correctAnswer
                                  : AppColors.wrongAnswer,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          if (!isCorrect)
                            Text(
                              'Correct answer: ${question.options[question.correctAnswerIndex]}',
                              style: const TextStyle(
                                fontSize: 14,
                                color: AppColors.textSecondary,
                              ),
                            ),
                        ],
                      ),
                    ),
                  );
                }),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                  },
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: AppColors.primary,
                  ),
                  child: const Text(
                    'Back to Subjects',
                    style: TextStyle(fontSize: 16, color: AppColors.surface),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
