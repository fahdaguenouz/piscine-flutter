import '../models/category.dart';
import '../models/question.dart';

final Category historyCategory = Category(
  name: "History",
  image: "assets/images/categories/history.jpg",
  questions: [
    Question(question: "World War II ended in 1945.", answer: true, image: "assets/images/questions/history/q1.jpg", difficulty: "easy"),
    Question(question: "Napoleon was born in Spain.", answer: false, image: "assets/images/questions/history/q2.jpg", difficulty: "easy"),
    Question(question: "The Roman Empire came before Ancient Greece.", answer: false, image: "assets/images/questions/history/q3.jpg", difficulty: "medium"),
    Question(question: "The Great Wall is in China.", answer: true, image: "assets/images/questions/history/q4.jpg", difficulty: "easy"),
    Question(question: "The Titanic sank in 1912.", answer: true, image: "assets/images/questions/history/q5.jpg", difficulty: "medium"),
    Question(question: "Julius Caesar was a Roman emperor.", answer: false, image: "assets/images/questions/history/q6.jpg", difficulty: "hard"),
    Question(question: "The Cold War involved the USA and USSR.", answer: true, image: "assets/images/questions/history/q7.jpg", difficulty: "medium"),
    Question(question: "Christopher Columbus reached America in 1492.", answer: true, image: "assets/images/questions/history/q8.jpg", difficulty: "easy"),
    Question(question: "The pyramids were built in Rome.", answer: false, image: "assets/images/questions/history/q9.jpg", difficulty: "easy"),
    Question(question: "The Berlin Wall fell in 1989.", answer: true, image: "assets/images/questions/history/q10.jpg", difficulty: "hard"),
  ],
);