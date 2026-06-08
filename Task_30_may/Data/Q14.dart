import 'dart:io';

void main() {
  // ## 14. Sum of Digits
  //
  // **Question:** Write a program to find the sum of digits of a number.

  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);

  num = num.abs();  // Handle negative numbers

  int sum = 0;

  while (num > 0) {
    sum += num % 10;
    num = num ~/ 10;
  }

  print("Sum of all digits of a given number is $sum");
}
