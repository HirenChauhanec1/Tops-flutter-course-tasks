void main(){

  // 4.
  // Write a Dart program that takes a user's name and the number of items in their cart, '
  // 'then prints a personalized message like 'Hi Priya, your cart has 3 items.
  // ' using string interpolation.<br><br><em><strong>Constraint:</strong>
  // Do not use the '+' operator to combine strings—use only string interpolation.</em>

  printMessage(name: "Hiren", cartItemCount: 4);

}

void printMessage({required String name, required int cartItemCount}){
  print("Hi $name, your cart has $cartItemCount items.");
}