import 'dart:io';

void main() {
  stdout.write("How many lines you want to print : ");
  var num = int.parse(stdin.readLineSync().toString());

  var no = 1;

  for (int i = 1; i <= num; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(no);
      no++;
    }
    print("");
  }

}
