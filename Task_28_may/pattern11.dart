import 'dart:io';

void main() {
  stdout.write("How many lines you want to print : ");
  var num = int.parse(stdin.readLineSync().toString());

  var a = 1;

  for (int i = 1; i <= num; i++) {
    for (int j = 1; j <= i; j++) {
      if (a % 2 == 0) {
        stdout.write(0);
      } else {
        stdout.write(1);
      }
      a++;
    }
    print("");
  }
}
