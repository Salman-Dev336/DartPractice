import 'dart:io';

class Student {
  String name;
  int rollNo;
  int marks;

  // Constructor
  Student(this.name, this.rollNo, this.marks);

  // Convert student details to string
  String toData() {
    return 'Name: $name, Roll No: $rollNo, Marks: $marks';
  }
}

void main() async {
  // Create a student object
  Student student = Student("Ali", 101, 85);

  // File reference
  File file = File('students.txt');

  // Write student details to file
  await file.writeAsString(student.toData());

  print("Student details saved to students.txt\n");

  // Read student details from file
  String contents = await file.readAsString();

  // Display details
  print("Reading from file:");
  print(contents);
}
