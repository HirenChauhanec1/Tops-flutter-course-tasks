void main(){

  // 2.
  // Given a Map representing a Flipkart product (with keys: 'title', 'price', 'inStock'),
  // write Dart code to update the 'inStock' value to false and print the updated Map.

  Map<String,dynamic> flipkartProduct = {
    'title' : 'Oppo M32 Headphone',
    'price' : 2000,
    'inStock' : true
  };

  flipkartProduct['inStock'] = false;
  print(flipkartProduct);


}

