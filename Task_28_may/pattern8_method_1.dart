import 'dart:io';

void main() {
  stdout.write("How many lines you want to print : ");
  var num = int.parse(stdin.readLineSync().toString());

  for (int i = 1; i <= num; i++) {
    for (int j = 1; j <= (num - i + 1); j++) {
      stdout.write(" ");
    }
    for (int j = 1; j <= (2 * i - 1); j++) {
      if (j % 2 == 0) {
        stdout.write(" ");
      } else {
        stdout.write((j + 1) ~/ 2);
      }
    }
    print("");
  }
}
