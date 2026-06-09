void main() {
  // 3.
  // Build a Dart class called Product to represent items on Flipkart, with fields: productName, price, and isAvailable.
  // Add a constructor and a method displayProduct() that prints all details in a nice format.
  // Instantiate one Product and call displayProduct().

  Product headPhone = Product(productName: "Oppo M32 HeadPhone", price: 4000, isAvailable: true);
  headPhone.displayProduct();

}

class Product {

  String productName;
  double price;
  bool isAvailable;

  Product({
    required this.productName,
    required this.price,
    required this.isAvailable,
  });

  void displayProduct(){
    print("Product Name : $productName \nProduct Price : ${price.toStringAsFixed(2)} \nProduct Availability : ${isAvailable ?  "Available" : "Not Available"}");
  }
}
