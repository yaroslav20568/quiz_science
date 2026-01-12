import 'package:flutter/material.dart';
import 'package:quiz_science/constants/index.dart';
import 'package:quiz_science/screens/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.primary,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      home: const SubjectSelectionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
