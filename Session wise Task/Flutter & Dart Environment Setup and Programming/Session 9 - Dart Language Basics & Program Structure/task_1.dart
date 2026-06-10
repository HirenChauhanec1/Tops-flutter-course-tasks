void main(){

  // 1.
  // Open main.dart in your Flutter project, declare variables for your favorite food's name (String),'
  // ' its price (double), and whether it's vegetarian (bool),
  // then print all three values to the console using print().


  String favouriteFoodName = "Paneer Tikka Masala";
  double price = 400.0;
  bool veg = true;

  print("My favourite food is $favouriteFoodName. \nIt's price is ₹$price. \nIt's ${veg ? "veg" : "non-veg" }.");

}