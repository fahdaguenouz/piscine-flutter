import 'package:flutter/material.dart';

import '../data/quiz_data.dart';
import '../models/category.dart';
import '../widgets/category_card.dart';
import 'difficulty_page.dart';

class CategoryPage extends StatelessWidget {
  final String username;

  const CategoryPage({
    super.key,
    required this.username,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Choose Category"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: GridView.builder(
          itemCount: categories.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.9,
          ),
          itemBuilder: (context, index) {
            final Category category = categories[index];

            return CategoryCard(
              category: category,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        DifficultyPage(category: category, username: username),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}