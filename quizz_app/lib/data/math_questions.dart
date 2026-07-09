import '../models/category.dart';
import '../models/question.dart';

final Category mathCategory = Category(
  name: "Math",
  image: "assets/images/categories/math.jpg",
  questions: [
    Question(question: "2 + 2 = 4", answer: true, image: "", difficulty: "easy"),
    Question(question: "9 × 9 = 81", answer: true, image: "", difficulty: "easy"),
    Question(question: "10 / 2 = 3", answer: false, image: "", difficulty: "easy"),
    Question(question: "√64 = 8", answer: true, image: "", difficulty: "medium"),
    Question(question: "A triangle has four sides.", answer: false, image: "", difficulty: "easy"),
    Question(question: "100 is divisible by 25.", answer: true, image: "", difficulty: "medium"),
    Question(question: "Pi is exactly 3.", answer: false, image: "", difficulty: "hard"),
    Question(question: "5² = 25", answer: true, image: "", difficulty: "easy"),
    Question(question: "7 is an even number.", answer: false, image: "", difficulty: "easy"),
    Question(question: "1 kilometer = 1000 meters.", answer: true, image: "", difficulty: "medium"),
  ],
);