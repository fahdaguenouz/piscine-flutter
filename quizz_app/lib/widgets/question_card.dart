import 'package:flutter/material.dart';

import '../models/question.dart';

class QuestionCard extends StatelessWidget {
  final Question question;
  final String categoryImage;

  const QuestionCard({
    super.key,
    required this.question,
    required this.categoryImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [

        if (question.image.isNotEmpty)
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              question.image,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          )
        else
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              categoryImage,
              height: 220,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

        const SizedBox(height: 25),

        Card(
          elevation: 5,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              question.question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
              ),
            ),
          ),
        ),
      ],
    );
  }
}