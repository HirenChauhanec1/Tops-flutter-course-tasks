import 'productUser.dart';
import 'customerUser.dart';
import 'sellerUser.dart';

void main() {

  // 3.
  // Create a static variable totalUsers in the ProductUser class that keeps track of how many
  // ProductUser (and its subclasses) objects have been created.
  // Increment it in each constructor and print its value after creating three different users.

  // super class
  ProductUser productUser = ProductUser(name: "Hiren", email: "h@gmail.com");

  // sub class
  SellerUser sellerUser  = SellerUser(name: "Narendra", email: "n@gmail.com",shopName: "Anand Store");

  //sub class
  CustomerUser customerUser = CustomerUser(name: "Amit", email: "a@gmail.com");

  print("No. of created objects of ProductUser class is ${ProductUser.totalUsers}.");

}




