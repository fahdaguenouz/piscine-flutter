import '../models/category.dart';
import '../models/question.dart';

final Category scienceCategory = Category(
  name: "Science",
  image: "assets/images/categories/science.jpg",
  questions: [
    Question(question: "Water boils at 100°C.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Humans have three lungs.", answer: false, image: "", difficulty: "easy"),
    Question(question: "The Earth revolves around the Sun.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Sound travels faster than light.", answer: false, image: "", difficulty: "medium"),
    Question(question: "DNA carries genetic information.", answer: true, image: "", difficulty: "medium"),
    Question(question: "The human body has 206 bones.", answer: true, image: "", difficulty: "hard"),
    Question(question: "Mars is called the Red Planet.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Plants produce oxygen.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Electrons are larger than atoms.", answer: false, image: "", difficulty: "hard"),
    Question(question: "Lightning is electricity.", answer: true, image: "", difficulty: "medium"),
  ],
);