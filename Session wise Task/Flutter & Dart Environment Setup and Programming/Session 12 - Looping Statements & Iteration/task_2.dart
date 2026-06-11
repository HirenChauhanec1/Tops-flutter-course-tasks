void main(){

  // 2.
  // Use a while loop in Dart to simulate a Flipkart-style shopping cart: starting with a list of 4 product names,
  // print each product and remove it from the list one by one until the cart is
  // empty.<br><br><em><strong>Hint:</strong> Use the removeAt(0) method to
  // remove the first item in each iteration.</em>

  List<String> itemName = ["HeadPhone", "TV", "Laptop", "Shoes"];

  while(itemName.isNotEmpty){
    print(itemName[0]);
    itemName.removeAt(0);
  }

}

