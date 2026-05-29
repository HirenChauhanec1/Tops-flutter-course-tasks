import 'dart:io';

void main() {
  // 3. W.A.P to find reverse number of given number

  stdout.write("Enter Number : ");
  var num = int.parse(stdin.readLineSync().toString());

  var reverseNum = 0;

  while (num > 0) {
    reverseNum = (reverseNum * 10) + (num % 10);
    num ~/= 10;
  }

  print("Reverse number of given number is $reverseNum");
}
