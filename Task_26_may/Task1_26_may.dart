import 'dart:io';

void main(){

  // 1. W.A.P to find biggest digit from given number

  stdout.write("Enter Number : ");
  var num = int.parse(stdin.readLineSync().toString());

  var biggestDigit = 0;

  while(num>0){
    
    var lastDigit = num%10;

    if(biggestDigit < lastDigit){
      biggestDigit = lastDigit;
    }

    num ~/=10;

  }

  print(biggestDigit);
}