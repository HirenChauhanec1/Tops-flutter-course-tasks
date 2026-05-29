import 'dart:io';

void main() {
  stdout.write("How many lines you want to print : ");
  var num = int.parse(stdin.readLineSync().toString());

    var a = 1;

  for (int i = 1; i <= num; i++) {
    for (int j = 1; j <= num + i - 1; j++) {
      if (j > num - i) {
        if (a % 2 != 0) {
          stdout.write((a+1)~/2);
        } else {
          stdout.write(" ");
        }
        a++;
      } else {
        stdout.write(" ");
      }
    }
    a = 1;
    print("");
  }
}
