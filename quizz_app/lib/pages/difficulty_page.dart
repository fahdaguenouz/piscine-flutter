import 'package:flutter/material.dart';

import '../models/category.dart';
import 'quizz_page.dart';

class DifficultyPage extends StatelessWidget {
  final Category category;
  final String username;

  const DifficultyPage({
    super.key,
    required this.category,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              category.image,
              height: 180,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 30),

            Text(
              "Choose Difficulty",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall,
            ),

            const SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                _startQuiz(context, "easy");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 55),
              ),
              child: const Text(
                "Easy",
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                _startQuiz(context, "medium");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                minimumSize: const Size(double.infinity, 55),
              ),
              child: const Text(
                "Medium",
                style: TextStyle(fontSize: 18),
              ),
            ),

            const SizedBox(height: 15),

            ElevatedButton(
              onPressed: () {
                _startQuiz(context, "hard");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                minimumSize: const Size(double.infinity, 55),
              ),
              child: const Text(
                "Hard",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _startQuiz(BuildContext context, String difficulty) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => QuizPage(
          category: category,
          difficulty: difficulty,
          username: username,
        ),
      ),
    );
  }
}