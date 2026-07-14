import 'person.dart';
class Student extends Person {
  int batch ;
  int level;
  String _secretkey= "01";
 Student(
    String name,
    String cityOfOrigin,
    int age,
    int height,
    this.batch,
    this.level, [
    String? surname,
  ]) : super(name, cityOfOrigin, age, height, surname);
}