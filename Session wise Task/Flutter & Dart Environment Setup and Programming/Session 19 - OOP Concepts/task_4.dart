import 'dart:io';
import 'customerUser.dart';

void main(){

  // 4.
  // Build a CustomerUser class that extends ProductUser and
  // adds a method placeOrder(productName) which prints a message like
  // 'Order placed for {productName} by {name}'. Use the this keyword to access the user's name.

  stdout.write("Enter your name : ");
  String name  = stdin.readLineSync().toString();

  stdout.write("Enter your email : ");
  String email  = stdin.readLineSync().toString();

  stdout.write("Enter your product name which you want to purchase : ");
  String productName  = stdin.readLineSync().toString();

  CustomerUser c1 = CustomerUser(name: name, email: email);
  c1.placeOrder(productName: productName);

}

