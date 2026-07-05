import 'person.dart';
class Student extends Person {
  int batch ;
  int level;
  String _secretkey= "01";
  Student({
    required String name,
    required String cityOfOrigin,
    required int age,
    required int height,
    required this.batch,
    required this.level,
    String? surname
  }) : super(
      name: name, 
      cityOfOrigin: cityOfOrigin, 
      age: age, 
      height: height, 
      surname: surname
  );
}