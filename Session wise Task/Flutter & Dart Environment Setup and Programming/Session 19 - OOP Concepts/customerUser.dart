import 'productUser.dart';

class CustomerUser extends ProductUser{
  
  CustomerUser({required super.name,required super.email});
  
  void placeOrder({required String productName})  => print("Order placed for $productName by ${this.name}.");
  // void placeOrder({required String productName})  => print("Order placed for $productName by ${super.name}.");

  @override
  void displayInfo() {
    super.displayInfo();
    placeOrder(productName: "HeadPhone");
  }

}