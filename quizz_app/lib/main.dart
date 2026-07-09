import 'package:flutter/material.dart';

import 'pages/home_page.dart';
import 'pages/category_page.dart';
import 'pages/difficulty_page.dart';
import 'pages/quizz_page.dart';
import 'pages/score_page.dart';
import 'pages/leaderboard_page.dart';


void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Quiz App',
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/categories': (context) => const CategoryPage(),
        '/difficulty': (context) => const DifficultyPage(),
        '/quiz': (context) => const QuizPage(),
        '/score': (context) => const ScorePage(),
        '/leaderboard': (context) => const LeaderboardPage(),
      },
    );
  }
}