void main() {
  // Filter the list inside the loop and print only elective subjects.

  List<Subject> subjects = [
    Subject(code: 'SS101', name: 'Social Science', isElective: false),
    Subject(code: 'MATH201', name: 'Mathematics', isElective: false),
    Subject(code: 'SCI302', name: 'Science', isElective: true),
    Subject(code: 'Chem401', name: 'Chemistry', isElective: true),
  ];

  for (var subject in subjects) {
    if (subject.isElective) {
      print(
        'Elective Subject -> Code: ${subject.code} | Name: ${subject.name}',
      );
    }
  }
}

class Subject {
  String code, name;
  bool isElective;

  Subject({required this.code, required this.name, required this.isElective});
}
