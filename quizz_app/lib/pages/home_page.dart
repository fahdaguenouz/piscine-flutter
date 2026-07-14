import 'package:flutter/material.dart';

import 'leaderboard_page.dart';
import 'username_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.quiz,
                  size: 120,
                  color: Colors.blue,
                ),

                const SizedBox(height: 25),

                const Text(
                  "Quiz App",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Test your knowledge in different categories.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),

                const SizedBox(height: 50),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton.icon(
                    icon: const Icon(Icons.play_arrow),
                    label: const Text(
                      "Take Exam",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const UsernamePage(),
                        ),
                      );
                    },
                  ),
                ),

                const SizedBox(height: 20),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: OutlinedButton.icon(
                    icon: const Icon(Icons.leaderboard),
                    label: const Text(
                      "Leaderboard",
                      style: TextStyle(fontSize: 18),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const LeaderboardPage(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}