import 'package:quizz_app/models/question.dart';
class Category {
  final String name;
  final String image;
  final List<Question> questions;

  Category({
    required this.name,
    required this.image,
    required this.questions,
  });
}