void main() {
  // 3.
  // Build a Dart snippet that simulates a Flipkart-style cart: given three product prices (as variables), calculate and
  // print the total, then apply a 10% discount if the total is above 1000.
  // Display the final amount with a message using string interpolation.<br><br><em><strong>Hint:</strong>
  // Use arithmetic and relational operators to check the discount condition.</em>

  num product1Price = 100;
  num product2Price = 135.50;
  num product3Price = 850;

  num MRP = product1Price + product2Price + product3Price;
  
  num discountPrice = MRP>1000 ? MRP/10 : 0;
  
  num finalPrice = MRP - discountPrice;
  
  print("MRP : ₹$MRP \nDiscount Price : ₹$discountPrice \nFinal Price : ₹$finalPrice");
  print("Your final price is ₹$finalPrice and ${discountPrice != 0 ? "You got a discount of ₹$discountPrice" : "You got no discount"} on this purchase.");
  
}


