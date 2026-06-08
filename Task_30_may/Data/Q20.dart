import 'dart:io';

void main() {
  // ## 20. Check Perfect Number
  //
  // **Question:** Write a program to check whether a number is a perfect number.

  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync().toString());

  String isPerfect;

  if (num == 0) {
    isPerfect = "isn't";
  } else {
    num = num.abs();
    int dividerSum = 0;

    for (int i = 1; i <= num ~/ 2; i++) {
      if (num % i == 0) {
        dividerSum += i;
      }
    }

    isPerfect = dividerSum == num ? "is" : "isn't";
  }
  print("$num $isPerfect a perfect number.");
}
