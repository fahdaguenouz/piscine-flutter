import '../models/category.dart';
import '../models/question.dart';

final Category geographyCategory = Category(
  name: "Geography",
  image: "assets/images/categories/geography.jpg",
  questions: [
    Question(question: "Africa is the largest continent.", answer: false, image: "", difficulty: "easy"),
    Question(question: "The Nile is the longest river.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Tokyo is the capital of Japan.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Mount Everest is in Nepal.", answer: true, image: "", difficulty: "medium"),
    Question(question: "Australia is both a country and a continent.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Brazil is in Europe.", answer: false, image: "", difficulty: "easy"),
    Question(question: "The Sahara is the largest desert.", answer: true, image: "", difficulty: "medium"),
    Question(question: "Greenland belongs to Canada.", answer: false, image: "", difficulty: "hard"),
    Question(question: "The Pacific is the largest ocean.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Morocco borders Algeria.", answer: true, image: "", difficulty: "easy"),
  ],
);