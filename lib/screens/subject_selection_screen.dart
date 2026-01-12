import 'package:flutter/material.dart';
import 'package:quiz_science/constants/index.dart';
import 'package:quiz_science/models/index.dart';
import 'package:quiz_science/widgets/index.dart';

class SubjectSelectionScreen extends StatelessWidget {
  const SubjectSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              children: [
                const SizedBox(height: 24),
                const Text(
                  'Choose a subject to start the quiz',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.textPrimary,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 48),
                SubjectCard(
                  subject: Subject.mathematics,
                  color: AppColors.mathColor,
                  icon: Icons.calculate,
                ),
                const SizedBox(height: 16),
                SubjectCard(
                  subject: Subject.physics,
                  color: AppColors.physicsColor,
                  icon: Icons.science,
                ),
                const SizedBox(height: 16),
                SubjectCard(
                  subject: Subject.chemistry,
                  color: AppColors.chemistryColor,
                  icon: Icons.eco,
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
