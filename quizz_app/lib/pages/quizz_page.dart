import 'dart:async';

import 'package:flutter/material.dart';
import 'score_page.dart';
import '../models/category.dart';
import '../models/question.dart';
import '../widgets/answer_button.dart';
import '../widgets/question_card.dart';
import '../widgets/timer_bar.dart';
import '../services/leaderboard_service.dart';

class QuizPage extends StatefulWidget {
  final Category category;
  final String difficulty;
  final String username;

  const QuizPage({
    super.key,
    required this.category,
    required this.difficulty,
    required this.username,
  });

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
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
      appBar: AppBar(title: Text(widget.category.name)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Text(
              widget.username,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 10),

            Text("Question ${currentQuestion + 1} / ${questions.length}"),

            const SizedBox(height: 15),

            TimerBar(seconds: seconds),

            const SizedBox(height: 20),

            QuestionCard(
              question: question,
              categoryImage: widget.category.image,
            ),

            const Spacer(),

            AnswerButton(text: "TRUE", onPressed: () => answer(true)),

            const SizedBox(height: 15),

            AnswerButton(text: "FALSE", onPressed: () => answer(false)),
          ],
        ),
      ),
    );
  }
}
