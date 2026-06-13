import 'dart:io';
import 'productUser.dart';
import 'sellerUser.dart';
import 'customerUser.dart';

void main() {
  // 5.
  // Write a function processUser(User user) that accepts either a SellerUser
  // orCustomerUser object and calls displayInfo().
  // Demonstrate polymorphism by passing both types and showing the correct method output.

  stdout.write("Enter your name : ");
  String name  = stdin.readLineSync().toString();

  stdout.write("Enter your email : ");
  String email  = stdin.readLineSync().toString();

  stdout.write("Enter your shop name : ");
  String shopName  = stdin.readLineSync().toString();

  SellerUser sellerUser = SellerUser(name: name, email: email, shopName: shopName);
  CustomerUser customerUser = CustomerUser(name: name, email: email);

  processUser(sellerUser);
  processUser(customerUser);

}

void processUser(ProductUser user) => user.displayInfo();


