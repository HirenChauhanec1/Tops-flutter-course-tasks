import 'dart:io';

void main() {
  // ## 15. Find Largest Digit in a Number
  //
  // **Question:** Write a program to find the largest digit in a number.

  stdout.write("Enter Number : ");
  int num = int.parse(stdin.readLineSync()!);

  num = num.abs();

  int largestDigit = 0;

  while (num > 0) {
    int lastDigit = num % 10;

    if (largestDigit < lastDigit) {
      largestDigit = lastDigit;
    }
    if(largestDigit == 9) break;

    num ~/= 10;
  }

  print("Largest digit in a given number is $largestDigit");
}
