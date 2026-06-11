import 'dart:io';

void main(){

  // 2.
  // Write a reusable Dart function called calculateDiscountedPrice that accepts the original price and
  // discount percentage, and returns the final price after applying the discount.
  // Test it with a Flipkart-style scenario: original price ₹1500, discount 20%.

  stdout.write("Enter MRP : ");
  num MRP = num.parse(stdin.readLineSync()!);

  stdout.write("Enter discount percentage : ");
  num discountPercentage = num.parse(stdin.readLineSync()!);

  String finalPrice  = calculateDiscountedPrice(MRP: MRP, discountPercentage: discountPercentage).toStringAsFixed(2);
  print("MRP : $MRP \nDiscount : $discountPercentage% \nFinal price : $finalPrice");
  print("Your final price is $finalPrice.");

}

num calculateDiscountedPrice({required num MRP, required num discountPercentage}) => MRP - (MRP/100)*discountPercentage;



