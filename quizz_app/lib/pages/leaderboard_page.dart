import 'package:flutter/material.dart';

import '../services/leaderboard_service.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final scores = LeaderboardService.instance.scores;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Leaderboard"),
        centerTitle: true,
      ),
      body: scores.isEmpty
          ? const Center(
              child: Text(
                "No scores yet.\nPlay a quiz first!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22),
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: scores.length,
              itemBuilder: (context, index) {
                final entry = scores[index];

                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.only(bottom: 12),
                  child: ListTile(
                    leading: CircleAvatar(
                      child: Text("${index + 1}"),
                    ),
                    title: Text(
                      entry.player,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Text(
                      "${entry.score}",
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}