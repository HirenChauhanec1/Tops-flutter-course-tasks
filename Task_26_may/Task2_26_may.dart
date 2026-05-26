import 'dart:io';

void main(){

  // 2. W.A.P to find lowest digit from given number

  stdout.write("Enter Number : ");
  var num = int.parse(stdin.readLineSync().toString());

  var lowestDigit = 9;

  while(num>0){

    var lastDigit = num%10;

    if(lowestDigit > lastDigit){
      lowestDigit = lastDigit;
    }

    num ~/= 10;

  }

  print(lowestDigit);
}