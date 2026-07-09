import '../models/category.dart';
import '../models/question.dart';

final Category cultureCategory = Category(
  name: "Culture",
  image: "assets/images/categories/culture.jpg",
  questions: [
    Question(question: "Sushi originated in Japan.", answer: true, image: "", difficulty: "easy"),
    Question(question: "The Mona Lisa was painted by Van Gogh.", answer: false, image: "", difficulty: "easy"),
    Question(question: "Arabic is spoken in Morocco.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Flamenco comes from Spain.", answer: true, image: "", difficulty: "medium"),
    Question(question: "Pizza originated in Italy.", answer: true, image: "", difficulty: "easy"),
    Question(question: "The Eiffel Tower is in Germany.", answer: false, image: "", difficulty: "easy"),
    Question(question: "The Olympic Games started in Greece.", answer: true, image: "", difficulty: "medium"),
    Question(question: "Tea originated in China.", answer: true, image: "", difficulty: "medium"),
    Question(question: "The Taj Mahal is in India.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Shakespeare wrote Hamlet.", answer: true, image: "", difficulty: "hard"),
  ],
);