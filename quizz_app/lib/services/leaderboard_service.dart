import '../models/leaderboard_entry.dart';

class LeaderboardService {
  LeaderboardService._();

  static final LeaderboardService instance = LeaderboardService._();

  final List<LeaderboardEntry> _scores = [];

  List<LeaderboardEntry> get scores {
    _scores.sort((a, b) => b.score.compareTo(a.score));
    return List.unmodifiable(_scores);
  }

  void addScore(String player, int score) {
    _scores.add(
      LeaderboardEntry(
        player: player,
        score: score,
      ),
    );

    _scores.sort((a, b) => b.score.compareTo(a.score));
  }
}