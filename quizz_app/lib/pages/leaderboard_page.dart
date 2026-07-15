import 'package:flutter/material.dart';

import '../services/leaderboard_service.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});
Color placeColor(int index) {
  switch (index) {
    case 0:
      return Colors.amber;
    case 1:
      return Colors.grey;
    case 2:
      return Colors.brown;
    default:
      return Colors.blue;
  }
}
  @override
  Widget build(BuildContext context) {
    final scores = LeaderboardService.instance.scores;

    return Scaffold(
      appBar: AppBar(title: const Text("Leaderboard"), centerTitle: true),
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
                  elevation: 6,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: placeColor(index),
                      child: Text(
                        "${index + 1}",
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(
                      entry.player,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    subtitle: Text(
                      index == 0
                          ? "🏆 Champion"
                          : index == 1
                          ? "🥈 Runner-up"
                          : index == 2
                          ? "🥉 Third Place"
                          : "Player",
                    ),
                    trailing: Text(
                      "${entry.score}",
                      style: const TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
