import 'dart:io';

void main() {
  // ## 13. Count Digits in a Number
  // **Question:** Write a program to count the number of digits in a number.

  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);

  int count = 0;

  if (num == 0) {
    count = 1;
  } else {
    num = num.abs(); // Handle negative numbers
    while (num > 0) {
      num = num ~/ 10;
      count++;
    }
  }


  print("No. of digits in a given number is $count");
}
