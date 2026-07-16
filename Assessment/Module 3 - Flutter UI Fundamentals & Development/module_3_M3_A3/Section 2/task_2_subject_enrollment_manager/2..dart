void main() {
  // Create a List<Subject> containing at least 4 subjects and use a for-in loop to print each
  // subject's code, name, and whether it is elective.

  List<Subject> subjects = [
    Subject(code: 'SS101', name: 'Social Science', isElective: false),
    Subject(code: 'MATH201', name: 'Mathematics', isElective: false),
    Subject(code: 'SCI302', name: 'Science', isElective: true),
    Subject(code: 'Chem401', name: 'Chemistry', isElective: true),
  ];

  for (var subject in subjects) {
    String type = subject.isElective ? 'Elective' : 'Core';
    print('Code: ${subject.code} | Name: ${subject.name} | Type: $type');
  }
}

class Subject {
  String code, name;
  bool isElective;

  Subject({required this.code, required this.name, required this.isElective});
}
