import 'dart:io';

void main() {
  stdout.write("How many lines you want to print : ");
  var num = int.parse(stdin.readLineSync().toString());

  for (int i = 1; i <= num; i++) {
    for (int j = 1; j <= 2 * num - i; j++) {
      if (j > i - 1) {
        if (i % 2 == 0) {
          if (j % 2 == 0) {
            stdout.write("*");
          } else {
            stdout.write(" ");
          }
        } else {
          if (j % 2 == 0) {
            stdout.write(" ");
          } else {
            stdout.write("*");
          }
        }
      } else {
        stdout.write(" ");
      }
    }
    print(" ");
  }
}
