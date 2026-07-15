import 'package:flutter/material.dart';

import 'home_page.dart';

class ScorePage extends StatelessWidget {
  final String username;
  final int correct;
  final int incorrect;
  final int totalQuestions;

  const ScorePage({
    super.key,
    required this.username,
    required this.correct,
    required this.incorrect,
    required this.totalQuestions,
  });

  @override
  Widget build(BuildContext context) {
    final double percentage = (correct / totalQuestions) * 100;

    final bool passed = percentage >= 50;

    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF4A6CF7), Color(0xFF6C63FF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24),
              child: Container(
                padding: const EdgeInsets.all(28),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28),
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 18,
                      color: Colors.black26,
                      offset: Offset(0, 8),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: passed
                          ? Colors.amber.shade100
                          : Colors.grey.shade200,
                      child: Icon(
                        passed ? Icons.emoji_events : Icons.sentiment_neutral,
                        size: 65,
                        color: passed ? Colors.amber : Colors.grey,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Text(
                      "Well Done, $username!",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 10),

                    Text(
                      passed
                          ? "Congratulations! You passed the quiz."
                          : "Good effort! Keep practicing and you'll improve.",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 17,
                        color: Colors.black54,
                      ),
                    ),

                    const SizedBox(height: 30),

                    CircleAvatar(
                      radius: 60,
                      backgroundColor: const Color(0xFFE8EDFF),
                      child: Text(
                        "${percentage.toStringAsFixed(0)}%",
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4A6CF7),
                        ),
                      ),
                    ),

                    const SizedBox(height: 30),

                    Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            _scoreRow(
                              Icons.check_circle,
                              "Correct Answers",
                              "$correct",
                              Colors.green,
                            ),

                            const Divider(height: 28),

                            _scoreRow(
                              Icons.cancel,
                              "Incorrect Answers",
                              "$incorrect",
                              Colors.red,
                            ),

                            const Divider(height: 28),

                            _scoreRow(
                              Icons.help_outline,
                              "Total Questions",
                              "$totalQuestions",
                              Colors.blue,
                            ),
                          ],
                        ),
                      ),
                    ),

                    const SizedBox(height: 35),

                    SizedBox(
                      width: double.infinity,
                      height: 58,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.home),
                        label: const Text(
                          "Back To Home",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF4A6CF7),
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (_) => const HomePage()),
                            (route) => false,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _scoreRow(IconData icon, String title, String value, Color color) {
    return Row(
      children: [
        Icon(icon, color: color),

        const SizedBox(width: 12),

        Expanded(child: Text(title, style: const TextStyle(fontSize: 18))),

        Text(
          value,
          style: TextStyle(
            color: color,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ],
    );
  }
}
