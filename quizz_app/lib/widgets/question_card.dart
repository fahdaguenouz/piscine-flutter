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
    final String image =
        question.image.isEmpty ? categoryImage : question.image;

    return Card(
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(24),
      ),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: image.startsWith("http")
                  ? Image.network(
                      image,
                      height: 220,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder: (_, __, ___) => const Icon(
                        Icons.image_not_supported,
                        size: 80,
                      ),
                    )
                  : Image.asset(
                      image,
                      height: 220,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
            ),

            const SizedBox(height: 20),

            Text(
              question.question,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}