import 'package:flutter/material.dart';
import 'package:quiz_science/widgets/ui/index.dart';

class QuizNavigationButtons extends StatelessWidget {
  final bool showPrevious;
  final bool isNextEnabled;
  final String nextButtonText;
  final VoidCallback? onPrevious;
  final VoidCallback? onNext;

  const QuizNavigationButtons({
    super.key,
    required this.showPrevious,
    required this.isNextEnabled,
    required this.nextButtonText,
    this.onPrevious,
    this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (showPrevious)
          AppButton(
            text: 'Previous',
            type: AppButtonType.outlined,
            onPressed: onPrevious,
            isExpanded: true,
          ),
        if (showPrevious) const SizedBox(width: 16),
        AppButton(
          text: nextButtonText,
          type: AppButtonType.elevated,
          onPressed: isNextEnabled ? onNext : null,
          isExpanded: true,
        ),
      ],
    );
  }
}
