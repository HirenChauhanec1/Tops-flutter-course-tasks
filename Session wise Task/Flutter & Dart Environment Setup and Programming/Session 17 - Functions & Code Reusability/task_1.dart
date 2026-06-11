import 'dart:io';

void main(){

  // 1.
  // Create a Dart function named isValidUsername that takes a String and
  // returns true if it is at least 6 characters long and
  // contains no spaces, otherwise returns false.

  stdout.write("Enter your username : ");
  String userName = stdin.readLineSync().toString();

  print(isValidUsername(userName));
  
}

bool isValidUsername(String userName) => userName.length >= 6 && !userName.contains(" ");




