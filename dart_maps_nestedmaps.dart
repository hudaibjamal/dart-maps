import 'dart_classes.dart';

class Student {
  String name;
  String major;
  List<int> marks;
  double average = 0;
  Student({required this.name,required this.major,required this.marks});

  static List<Student> students = [
    Student(
      name: 'omar',
      major: 'engineering',
      marks: [75, 83, 70, 74, 88],
    ),
    Student(
      name: 'mohammad',
      major: 'medicine',
      marks: [95, 82, 89, 98, 85],
    ),
    Student(
      name: 'salem',
      major: 'literature',
      marks: [60, 80, 67, 55, 77],
    ),
  ];
}

void main() {
  
 
  for (Student student in students){
    int sum =0;
    for(int grade in student.marks){
      sum +=grade;
    }

    student.average=sum/student.marks.length;

    print(student.average);
  }
}