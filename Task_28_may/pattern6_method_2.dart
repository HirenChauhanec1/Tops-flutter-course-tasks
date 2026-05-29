import 'dart:io';

void main() {
  stdout.write("How many lines you want to print : ");
  var num = int.parse(stdin.readLineSync().toString());

  for (int i = 1; i <= num; i++) {
    for (int j = 1; j <= num; j++) {
      if (j > num - i) {
        stdout.write("*");
      } else {
        stdout.write(" ");
      }
    }
    print("");
  }
}
