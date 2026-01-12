import 'package:flutter/material.dart';
import 'package:quiz_science/constants/index.dart';

enum AppButtonType { elevated, outlined }

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final AppButtonType type;
  final bool isExpanded;

  const AppButton({
    super.key,
    required this.text,
    this.onPressed,
    this.type = AppButtonType.elevated,
    this.isExpanded = false,
  });

  @override
  Widget build(BuildContext context) {
    final button = type == AppButtonType.elevated
        ? ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              backgroundColor: AppColors.primary,
              disabledBackgroundColor: AppColors.border,
            ),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: AppColors.surface),
            ),
          )
        : OutlinedButton(
            onPressed: onPressed,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 16),
              side: const BorderSide(color: AppColors.primary),
            ),
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, color: AppColors.primary),
            ),
          );

    if (isExpanded) {
      return Expanded(child: button);
    }

    return button;
  }
}
