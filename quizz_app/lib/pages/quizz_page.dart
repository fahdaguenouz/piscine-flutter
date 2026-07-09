import 'package:flutter/material.dart';

import '../models/category.dart';

class QuizPage extends StatelessWidget {
  final Category category;
  final String difficulty;

  const QuizPage({
    super.key,
    required this.category,
    required this.difficulty,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
      ),
      body: Center(
        child: Text(
          "Category: ${category.name}\nDifficulty: $difficulty",
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}