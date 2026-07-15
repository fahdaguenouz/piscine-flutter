import 'dart:async';

import 'package:flutter/material.dart';
import 'score_page.dart';
import '../models/category.dart';
import '../models/question.dart';
// import '../widgets/answer_button.dart';
import '../widgets/question_card.dart';
// import '../widgets/timer_bar.dart';
import '../services/leaderboard_service.dart';

class DetailedView extends StatefulWidget {
  final Category category;
  final String difficulty;
  final String username;

  const DetailedView({
    super.key,
    required this.category,
    required this.difficulty,
    required this.username,
  });

  @override
  State<DetailedView> createState() => _DetailedViewState();
}

class _DetailedViewState extends State<DetailedView> {
  late List<Question> questions;

  int currentQuestion = 0;

  int correct = 0;
  int incorrect = 0;

  int seconds = 15;

  Timer? timer;

  bool answered = false;

  @override
  void initState() {
    super.initState();

    questions = widget.category.questions
        .where((q) => q.difficulty == widget.difficulty)
        .toList();

    questions.shuffle();

    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    seconds = 15;

    timer?.cancel();

    timer = Timer.periodic(const Duration(seconds: 1), (t) {
      if (seconds == 0) {
        t.cancel();
        incorrect++;
        nextQuestion();
      } else {
        setState(() {
          seconds--;
        });
      }
    });
  }

  void answer(bool userAnswer) {
    if (answered) return;

    answered = true;

    timer?.cancel();

    if (userAnswer == questions[currentQuestion].answer) {
      correct++;
    } else {
      incorrect++;
    }

    Future.delayed(const Duration(milliseconds: 800), nextQuestion);
  }

  void nextQuestion() {
    if (currentQuestion == questions.length - 1) {
      timer?.cancel();

      LeaderboardService.instance.addScore(widget.username, correct);

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => ScorePage(
            username: widget.username,
            correct: correct,
            incorrect: incorrect,
            totalQuestions: questions.length,
          ),
        ),
      );

      return;
    }

    setState(() {
      answered = false;
      currentQuestion++;
    });

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestion];

    return Scaffold(
      body: Container(
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
              const SizedBox(height: 15),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.username,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                          ),

                          Text(
                            widget.category.name,
                            style: const TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),
                    ),

                    CircleAvatar(
                      radius: 28,
                      backgroundColor: Colors.white,
                      child: Text(
                        "$seconds",
                        style: const TextStyle(
                          color: Color(0xFF4A6CF7),
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: LinearProgressIndicator(
                  value: (currentQuestion + 1) / questions.length,
                  borderRadius: BorderRadius.circular(20),
                  minHeight: 10,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "Question ${currentQuestion + 1} of ${questions.length}",
                style: const TextStyle(color: Colors.white),
              ),

              const SizedBox(height: 20),

              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(22),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(35),
                    ),
                  ),
                  child: Column(
                    children: [
                      QuestionCard(
                        question: question,
                        categoryImage: widget.category.image,
                      ),

                      const Spacer(),

                      SizedBox(
                        width: double.infinity,
                        height: 58,
                        child: ElevatedButton.icon(
                          onPressed: () => answer(true),
                          icon: const Icon(Icons.check),
                          label: const Text(
                            "TRUE",
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 15),

                      SizedBox(
                        width: double.infinity,
                        height: 58,
                        child: ElevatedButton.icon(
                          onPressed: () => answer(false),
                          icon: const Icon(Icons.close),
                          label: const Text(
                            "FALSE",
                            style: TextStyle(fontSize: 18),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                          ),
                        ),
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
}
