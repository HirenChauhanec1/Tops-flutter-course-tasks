import 'dart:io';

void main(){

  // ## 18. Print All Odd Numbers from 1 to 100
  //
  // **Question:** Write a program to print all odd numbers from 1 to 100.

  stdout.write("Enter a number : ");
  int num = int.parse(stdin.readLineSync()!);

  stdout.write("Odd numbers from 1 to $num are ");

  for (int i = 1; i <= num; i+=2) {
      stdout.write("$i,");
  }

}