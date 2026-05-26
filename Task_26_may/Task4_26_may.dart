import 'dart:io';

void main() {

  // 4. W.A.P to reverse any String ex: hiren -> nerih

  stdout.write("Enter Number : ");
  var characters = stdin.readLineSync().toString().split('');

  var reverseText = "";

  for (int i = characters.length - 1; i >= 0; i--) {
    reverseText = "$reverseText${characters[i]}";
  }

  print("Reverse of given text is $reverseText");
}
