import 'productUser.dart';

class SellerUser extends ProductUser{

  String shopName;

  SellerUser({required super.name, required super.email,required this.shopName});

  @override
  void displayInfo() {
    super.displayInfo();
    print("ShopName : $shopName");
  }

}