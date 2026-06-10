void main(){

  // 2.
  // Write a Dart function checkDiscountEligibility that takes a user's order amount and '
  // 'returns true if the amount is greater than or equal to 500, otherwise false. '
  //  'Use a logical operator and print a message like 'You are eligible
  // for a discount!' or 'No discount available.' using string interpolation.

  String foodName = "Burger";
  num foodPrice = 100;

  print(checkDiscountEligibility(foodPrice) ? "You are eligible for a discount!" : "No discount available.");

}

bool checkDiscountEligibility(num orderAmount) => orderAmount >= 500;





