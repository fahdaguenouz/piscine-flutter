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

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz Result"),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(25),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Icon(
                percentage >= 50
                    ? Icons.emoji_events
                    : Icons.sentiment_neutral,
                size: 100,
                color: Colors.amber,
              ),

              const SizedBox(height: 25),

              Text(
                username,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 30),

              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    children: [

                      Text(
                        "${percentage.toStringAsFixed(0)} %",
                        style: const TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 25),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Correct Answers",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "$correct",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const Divider(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Incorrect Answers",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "$incorrect",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.red,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),

                      const Divider(),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Total Questions",
                            style: TextStyle(fontSize: 18),
                          ),
                          Text(
                            "$totalQuestions",
                            style: const TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 40),

              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton.icon(
                  icon: const Icon(Icons.home),
                  label: const Text(
                    "Back To Home",
                    style: TextStyle(fontSize: 18),
                  ),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const HomePage(),
                      ),
                      (route) => false,
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}