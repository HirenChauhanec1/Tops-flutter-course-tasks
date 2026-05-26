import 'dart:io';

void main(){

  stdout.write("Enter Number : ");
  var num = int.parse(stdin.readLineSync().toString());

  var reverseNum = "" ;

  while(num>0){

    reverseNum = "$reverseNum${num%10}";
    num ~/= 10;

  }

  print("Reverse number of given number is ${int.parse(reverseNum)}");


}