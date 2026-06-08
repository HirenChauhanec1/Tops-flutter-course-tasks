import 'dart:io';
import 'dart:math';

void main() {
  // ## 21. Print Prime Numbers from 1 to 50
  //
  // **Question:** Write a program to print all prime numbers from 1 to 50.

  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);

  stdout.write("Prime numbers from 1 to $num are ");

  for (int i = 2; i <= num; i++) {
    bool isPrime = true;
    for (int j = 2; j <= sqrt(i); j++) {
      if (i % j == 0) {
        isPrime = false;
        break;
      }
    }
    if (isPrime) {
      stdout.write("$i,");
    }
  }
}
