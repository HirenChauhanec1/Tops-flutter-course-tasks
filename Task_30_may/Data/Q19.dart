import 'dart:io';

void main() {
  // ## 19. Find GCD of Two Numbers
  //
  // **Question:** Write a program to find the GCD of two numbers.

  stdout.write("Enter first number : ");
  int firstNum = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Second number : ");
  int secNum = int.parse(stdin.readLineSync()!);

  int gcd = 0;

  if (firstNum == 0) {
    gcd = secNum;
  }
  else if (secNum == 0) {
    gcd = firstNum;
  }
  else {

    firstNum = firstNum.abs();
    secNum = secNum.abs();

    int smallNum = firstNum < secNum ? firstNum : secNum;
    int largeNum = firstNum > secNum ? firstNum : secNum;

    for (int i = 1; i <= smallNum ~/ 2; i++) {
      if (firstNum % i == 0 && secNum % i == 0) {
        gcd = i;
      }
    }
    if (largeNum % smallNum == 0) {
      gcd = smallNum;
    }
  }

  print("GCD for given two number is $gcd");
}

// while (secNum != 0) {
// int temp = secNum;
// secNum = firstNum % secNum;
// firstNum = temp;
// }
