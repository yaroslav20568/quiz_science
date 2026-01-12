import 'package:flutter/material.dart';
import 'package:quiz_science/constants/index.dart';
import 'package:quiz_science/models/index.dart';

class ResultSummaryCard extends StatelessWidget {
  final Quiz quiz;
  final int correctAnswers;
  final double percentage;
  final Color resultColor;

  const ResultSummaryCard({
    super.key,
    required this.quiz,
    required this.correctAnswers,
    required this.percentage,
    required this.resultColor,
  });

  String _getMessage(int correctAnswers, int totalQuestions) {
    if (correctAnswers == totalQuestions) {
      return 'Perfect! All answers are correct!';
    } else if (correctAnswers >= totalQuestions / 2) {
      return 'Good job! Keep practicing!';
    } else {
      return 'Keep studying! You can do better!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: resultColor.withValues(alpha: 0.3)),
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
            _getMessage(correctAnswers, quiz.totalQuestions),
            style: const TextStyle(
              fontSize: 18,
              color: AppColors.textSecondary,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
