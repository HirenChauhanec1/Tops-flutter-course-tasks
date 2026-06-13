import 'dart:io';
import 'productUser.dart';

void main(){

  // 1.
  // Create a Dart class called ProductUser with properties name and email,
  // and a method displayInfo() that prints both properties.

  stdout.write("Enter your name : ");
  String name  = stdin.readLineSync().toString();

  stdout.write("Enter your email : ");
  String email  = stdin.readLineSync().toString();

  ProductUser p1 = ProductUser(name: name, email: email);
  p1.displayInfo();

}




