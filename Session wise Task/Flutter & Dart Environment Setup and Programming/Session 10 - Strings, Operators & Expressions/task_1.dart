import 'price_calculator.dart';

void main(){

  // 1.
  // Create a Dart program called price_calculator.dart that takes the base price of a food item (for example, a burger) and
  // calculates the total price after adding 12% GST.
  // Print both the original price and the final price using string interpolation.


  String foodName = "Burger";
  num foodBasePrice = 100;

  num finalPrice = calculateFinalPrice(foodBasePrice);

  print("FoodName : $foodName \nOriginal Price : $foodBasePrice \nFinal Price : $finalPrice");

}

