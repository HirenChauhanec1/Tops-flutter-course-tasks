void main() async{
  // 2.
  // Build a simple Dart function getOrderStatus() that simulates checking a Zomato order status using
  // Future.delayed for 3 seconds, then returns 'Order Delivered'.
  // Call this function using async/await and print the result.


  print("Delivery man is on the way to deliver your order.");

  await getOrderStatus().then((value) => print(value));

  print("Rate delivery service out of 5 start rating.");
}
Future<String> getOrderStatus() async =>
    await Future.delayed(Duration(seconds: 3)).then((value) => "Order Delivered");




