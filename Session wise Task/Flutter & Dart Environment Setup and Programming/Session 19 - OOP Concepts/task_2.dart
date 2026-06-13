import 'dart:io';
import 'productUser.dart';
import 'sellerUser.dart';

void main(){

  // 2.
  // Extend ProductUser to create a SellerUser class with an additional property shopName and
  // override the displayInfo() method to also print the shop name.
  // <br><br><em><strong>Hint:</strong> Use the super keyword to call the base class method inside your override.</em>

    stdout.write("Enter your name : ");
    String name  = stdin.readLineSync().toString();

    stdout.write("Enter your email : ");
    String email  = stdin.readLineSync().toString();

    stdout.write("Enter your shop name : ");
    String shopName  = stdin.readLineSync().toString();

    SellerUser s1 = SellerUser(name: name, email: email, shopName: shopName);
    s1.displayInfo();

}






