void main() {
  // 2.
  // Build a Dart function called getDeliveryCharge that takes the order value as input and
  // uses if-else to apply a delivery charge: if the order is below 200,
  // charge 50; if between 200 and 500, charge 20; if above 500, delivery is free.
  // Print the final delivery charge.


  getDeliveryCharge(240);
}

void getDeliveryCharge(num orderValue) {
  num deliveryCharge = 0;

  if (orderValue < 200) {
    deliveryCharge = 50;
  } else if (orderValue >= 200 && orderValue <= 500) {
    deliveryCharge = 20;
  } else if (orderValue > 500) {
    deliveryCharge = 0;
  }

  print("Your delivery charge is $deliveryCharge.");
}
