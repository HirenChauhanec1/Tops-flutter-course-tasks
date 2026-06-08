import 'dart:io';

void main() {
  // ## 16. Count Even and Odd Digits
  //
  // **Question:** Write a program to count even and odd digits in a number.

  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);

  int noOfEven = 0;
  int noOfOdd = 0;

  if (num == 0) {
    noOfEven = 1;
  } else {
    num = num.abs();
    while (num > 0) {
      int digit = num % 10;
      if (digit % 2 == 0) {
        noOfEven++;
      } else {
        noOfOdd++;
      }
      num ~/= 10;
    }
  }

  print("No. of odd digits in a given number is $noOfOdd");
  print("No. of even digits in a given number is $noOfEven");
}
