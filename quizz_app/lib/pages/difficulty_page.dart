import 'package:flutter/material.dart';

import '../models/category.dart';

class DifficultyPage extends StatelessWidget {
  final Category category;

  const DifficultyPage({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Difficulty Page",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}