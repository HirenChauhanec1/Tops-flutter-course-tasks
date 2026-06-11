import 'dart:io';

void main() {

  // 5.
  // Refactor this Dart code by extracting the repeated calculation into a separate function:
  // three different Zomato order totals are each calculated as item price + 5% service charge.
  // Your function should be named addServiceCharge and take the price as a parameter.
  // <br><br><em><strong>Hint:</strong> Replace all repeated calculation lines with calls to your new function.</em>

  num firstOrderPrice = 1000;
  num secondOrderPrice = 1500;
  num thirdOrderPrice = 2200;

  print("First Order final price : ${addServiceCharge(firstOrderPrice)}");
  print("Second Order final price : ${addServiceCharge(secondOrderPrice)}");
  print("Third Order final price : ${addServiceCharge(thirdOrderPrice)}");

}
num addServiceCharge(num orderPrice) => orderPrice + (orderPrice/100)*5;