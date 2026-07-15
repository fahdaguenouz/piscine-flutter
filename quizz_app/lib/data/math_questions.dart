import '../models/category.dart';
import '../models/question.dart';

final Category mathCategory = Category(
  name: "Math",
  image: "assets/images/categories/maths.jpeg",
  questions: [
    // EASY
    Question(
      question: "2 + 2 = 4",
      answer: true,
      image: "",
      difficulty: "easy",
    ),
    Question(
      question: "9 × 9 = 81",
      answer: true,
      image: "",
      difficulty: "easy",
    ),
    Question(
      question: "10 / 2 = 3",
      answer: false,
      image: "",
      difficulty: "easy",
    ),
    Question(
      question: "A triangle has four sides.",
      answer: false,
      image: "",
      difficulty: "easy",
    ),
    Question(
      question: "5² = 25",
      answer: true,
      image: "",
      difficulty: "easy",
    ),
    Question(
      question: "7 is an even number.",
      answer: false,
      image: "",
      difficulty: "easy",
    ),
    Question(
      question: "Half of 20 is 10.",
      answer: true,
      image: "",
      difficulty: "easy",
    ),
    Question(
      question: "A square has 4 equal sides.",
      answer: true,
      image: "",
      difficulty: "easy",
    ),
    Question(
      question: "6 + 1 = 7",
      answer: true,
      image: "",
      difficulty: "easy",
    ),
    Question(
      question: "12 is less than 5.",
      answer: false,
      image: "",
      difficulty: "easy",
    ),

    // MEDIUM
    Question(
      question: "√64 = 8",
      answer: true,
      image: "",
      difficulty: "medium",
    ),
    Question(
      question: "100 is divisible by 25.",
      answer: true,
      image: "",
      difficulty: "medium",
    ),
    Question(
      question: "1 kilometer = 1000 meters.",
      answer: true,
      image: "",
      difficulty: "medium",
    ),
    Question(
      question: "15% of 200 is 30.",
      answer: true,
      image: "",
      difficulty: "medium",
    ),
    Question(
      question: "An angle of 90 degrees is called a right angle.",
      answer: true,
      image: "",
      difficulty: "medium",
    ),
    Question(
      question: "3/4 is greater than 2/3.",
      answer: true,
      image: "",
      difficulty: "medium",
    ),
    Question(
      question: "The perimeter of a rectangle is found by adding all sides.",
      answer: true,
      image: "",
      difficulty: "medium",
    ),
    Question(
      question: "A hexagon has 5 sides.",
      answer: false,
      image: "",
      difficulty: "medium",
    ),
    Question(
      question: "50% is the same as one half.",
      answer: true,
      image: "",
      difficulty: "medium",
    ),
    Question(
      question: "A pentagon has 6 sides.",
      answer: false,
      image: "",
      difficulty: "medium",
    ),

    // HARD
    Question(
      question: "Pi is exactly 3.",
      answer: false,
      image: "",
      difficulty: "hard",
    ),
    Question(
      question: "0 is an even number.",
      answer: true,
      image: "",
      difficulty: "hard",
    ),
    Question(
      question: "The sum of angles in a triangle is 180 degrees.",
      answer: true,
      image: "",
      difficulty: "hard",
    ),
    Question(
      question: "Prime numbers have exactly two positive divisors.",
      answer: true,
      image: "",
      difficulty: "hard",
    ),
    Question(
      question: "The value of 2³ is 6.",
      answer: false,
      image: "",
      difficulty: "hard",
    ),
    Question(
      question: "A diameter is twice the radius of a circle.",
      answer: true,
      image: "",
      difficulty: "hard",
    ),
    Question(
      question: "Negative 5 is greater than negative 2.",
      answer: false,
      image: "",
      difficulty: "hard",
    ),
    Question(
      question: "An isosceles triangle always has three equal sides.",
      answer: false,
      image: "",
      difficulty: "hard",
    ),
    Question(
      question: "A right triangle must contain one 90-degree angle.",
      answer: true,
      image: "",
      difficulty: "hard",
    ),
    Question(
      question: "All odd numbers are prime numbers.",
      answer: false,
      image: "",
      difficulty: "hard",
    ),
  ],
);