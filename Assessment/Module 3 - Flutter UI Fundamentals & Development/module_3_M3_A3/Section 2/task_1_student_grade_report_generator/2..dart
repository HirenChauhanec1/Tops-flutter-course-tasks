void main() {
  // Use string interpolation to print a formatted grade report that includes all four values in a
  // readable message.

  int rollNumber = 101;
  String studentName = "Rahul Sharma";
  int numberOfSubjects = 5;
  double totalMarks = 438.5;

  print('''
Roll Number       : $rollNumber
Student Name      : $studentName
Number of Subjects: $numberOfSubjects
Total Marks       : $totalMarks
''');
}
