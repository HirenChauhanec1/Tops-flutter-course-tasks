void main() {
  // Store the same subjects in a Map<String, bool> (subject code › isElective) and print whether a
  // specific subject code is elective by looking it up in the map.

  Map<String, bool> subjectMap = {
    'SS101': false,
    'MATH201': false,
    'SCI302': true,
    'Chem401': true,
  };

  String searchCode = 'Chem401';

  if (subjectMap.containsKey(searchCode)) {
    bool isElective = subjectMap[searchCode]!;
    print(
      'Subject $searchCode is ${isElective ? "an Elective" : "a Core"} subject.',
    );
  } else {
    print('Subject $searchCode not found in the map.');
  }
}
