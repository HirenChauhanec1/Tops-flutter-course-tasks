import 'dart:math';

void main(){

//   4.
// Simulate a Flipkart-style payment process in Dart: create a function processPayment() that
// randomly throws an exception to simulate payment failure.
// Use try-catch to display either 'Payment Successful' or 'Payment Failed: [error message]'.
// <br><br><em><strong>Constraint:</strong> Use Random().nextBool() to decide if the payment fails.</em>

 try {
   String paymentStatus = processPayment();
   print(paymentStatus);
 } catch (e) {
   print(e);
 }


}

String processPayment() =>
    Random().nextBool() ? "Payment Successful" : throw Exception("Payment Failed");


