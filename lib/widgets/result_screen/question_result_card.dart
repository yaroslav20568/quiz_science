import 'package:flutter/material.dart';
import 'package:quiz_science/constants/index.dart';
import 'package:quiz_science/models/index.dart';

class QuestionResultCard extends StatelessWidget {
  final Question question;
  final int questionIndex;
  final int userAnswer;
  final bool isCorrect;

  const QuestionResultCard({
    super.key,
    required this.question,
    required this.questionIndex,
    required this.userAnswer,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
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
                    'Question ${questionIndex + 1}',
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
  }
}
