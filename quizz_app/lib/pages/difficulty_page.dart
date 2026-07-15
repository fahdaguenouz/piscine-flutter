import 'package:flutter/material.dart';

import '../models/category.dart';
import 'DetailedView.dart';

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
          child: Column(
            children: [
              const SizedBox(height: 20),

              Text(
                category.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 15),

              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  category.image,
                  height: 150,
                  width: 250,
                  fit: BoxFit.cover,
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Choose Difficulty",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),

              const SizedBox(height: 25),

              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(24),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      _difficultyCard(
                        context,
                        title: "Easy",
                        subtitle: "Perfect for beginners",
                        color: Colors.green,
                        icon: Icons.sentiment_satisfied_alt,
                        difficulty: "easy",
                      ),

                      const SizedBox(height: 18),

                      _difficultyCard(
                        context,
                        title: "Medium",
                        subtitle: "A balanced challenge",
                        color: Colors.orange,
                        icon: Icons.psychology,
                        difficulty: "medium",
                      ),

                      const SizedBox(height: 18),

                      _difficultyCard(
                        context,
                        title: "Hard",
                        subtitle: "Only for quiz masters!",
                        color: Colors.red,
                        icon: Icons.local_fire_department,
                        difficulty: "hard",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _difficultyCard(
    BuildContext context, {
    required String title,
    required String subtitle,
    required Color color,
    required IconData icon,
    required String difficulty,
  }) {
    return Material(
      color: Colors.white,
      elevation: 8,
      borderRadius: BorderRadius.circular(20),
      child: InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () => _startQuiz(context, difficulty),
        child: Container(
          height: 90,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              CircleAvatar(
                radius: 28,
                backgroundColor: color.withOpacity(.15),
                child: Icon(icon, color: color, size: 32),
              ),

              const SizedBox(width: 18),

              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 4),

                    Text(subtitle, style: const TextStyle(color: Colors.grey)),
                  ],
                ),
              ),

              Icon(Icons.arrow_forward_ios, color: color),
            ],
          ),
        ),
      ),
    );
  }

  void _startQuiz(BuildContext context, String difficulty) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => DetailedView(
          category: category,
          difficulty: difficulty,
          username: username,
        ),
      ),
    );
  }
}
