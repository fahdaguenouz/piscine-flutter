import '../models/category.dart';
import '../models/question.dart';

final Category sportsCategory = Category(
  name: "Sports",
  image: "assets/images/categories/sports.jpg",
  questions: [
    Question(question: "Football is played with a round ball.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Basketball uses a netted hoop.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Tennis is played with a bat.", answer: false, image: "", difficulty: "easy"),
    Question(question: "The FIFA World Cup is held every 4 years.", answer: true, image: "", difficulty: "medium"),
    Question(question: "A marathon is 42.195 km long.", answer: true, image: "", difficulty: "hard"),
    Question(question: "Cristiano Ronaldo is the Best Football Player in the World.", answer: true, image: "", difficulty: "hard"),

    Question(question: "Swimming is an Olympic sport.", answer: true, image: "", difficulty: "easy"),
    Question(question: "Cricket uses a puck.", answer: false, image: "", difficulty: "medium"),
    Question(question: "Volleyball has six players per team on the court.", answer: true, image: "", difficulty: "hard"),
    Question(question: "Formula 1 is a motorsport.", answer: true, image: "", difficulty: "medium"),
    Question(question: "Golf is played with a racket.", answer: false, image: "", difficulty: "easy"),
  ],
);