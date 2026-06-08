import 'dart:io';

void main() {
  // ## 17. Print All Even Numbers from 1 to 100
  //
  // **Question:** Write a program to print all even numbers from 1 to 100.

  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);

  stdout.write("Even numbers from 1 to $num are ");

  for (int i = 2; i <= num; i +=2) {
      stdout.write("$i,");
  }
}
